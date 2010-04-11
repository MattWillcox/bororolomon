//
//  MathGame1_3ViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "MathGame1_3ViewController.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"

@implementation MathGame1_3ViewController
@synthesize score;
@synthesize A;
@synthesize B;
@synthesize C;

-(IBAction)back_Pressed{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];
	profile.LoggedinUser.EquationGame2Played++;

	
	[self dismissModalViewControllerAnimated:YES];
}

-(void)parse_Question {
	int lvl;	
	// find the level of question to create
	if(totalScore < 10)
		lvl = 2;
	else if(totalScore < 20)
		lvl = 3;
	else 
		lvl = 4;
	
	int operand = 1 + arc4random() % lvl;
	int number1, number2;
	
	// randomly to choose one of the operand
	if(operand == 1) {
		// additon question
		do {
			if(lvl == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			else {
				number1 = 1 + arc4random() % 20;
				number2 = 1 + arc4random() % 20;
			}
		} while (number1 == 2 && number2 == 2);
		Answer = number1 + number2;
	}
	// subtraction question	
	else if(operand == 2) {
		do {
			if(lvl == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			else {
				number1 = 1 + arc4random() % 20;
				number2 = 1 + arc4random() % 20;
			}
		} while ((number1 < number2) || (number1 == 4 && number2 == 2));
		Answer = number1 - number2;
	}
	//multiplication question
	else if(operand == 3){
		do {
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		} while (number1 == 2 && number2 == 2);
		Answer = number1 * number2;
	}
	//division question 	
	else if(operand == 4){
		do{
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		}while (number1 == 2 && number2 == 2);
		// number1 = number3 / number2
		int number3 = number1 * number2;
		Answer = number1;
		number1 = number3;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
}

- (void)viewDidLoad {
	//This is the timer that counts down from 60 in 1 second intervals.
	[super viewDidLoad];
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
	timeLable.text = @"60";
	timeLeft = 60;
	score.text = @"0";
	totalScore = 0;
	
	[self parse_Question];
}



-(void)updateLabel{
	//Updates the timer every 1 second, if timer reads 0 game ends
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
		timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
		
	}
	else {
		profile = [ManageProfile sharedManager];
		if (totalScore > profile.LoggedinUser.EquationGame2Score) {
			profile.LoggedinUser.EquationGame2Score = totalScore;
			[profile saveUserProfile];
		}
		profile.LoggedinUser.EquationGame2Played = profile.LoggedinUser.EquationGame2Played + 1;
		A.text = @"";
		B.text = @"";
		C.text = @"";
		questionMark.text = @"";
		equalSign.text =@"";
		Finished.text = @"F I N I S H E D !";
	}
}

// button 1, 2, 3, or 4 was pushed 
-(void)operand:(id)sender{
	if (timeLeft != 0) {
		BOOL result = NO;
		
		// check if the correct answer was given
		if(sender==button1)
			result = [self addition];
		else if(sender==button2)
			result = [self subtraction];
		else if(sender==button3)
			result = [self multiplication];
		else if(sender==button4)
			result = [self division];
		
		// increment totalScore variable
		if(result) totalScore++;
		else if(totalScore>0) totalScore--;
		
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
		
		//load another question
		[self parse_Question];
	}
}

-(BOOL)addition{
	// check if the correct answer is '+'
	if(Answer == [A.text intValue] + [B.text intValue])
		return YES;
	else
		return NO;
}

-(BOOL)subtraction{
	// check if the correct answer is '-'
	if(Answer == [A.text intValue] - [B.text intValue])
		return YES;
	else 
		return NO;
}

-(BOOL)multiplication{
	// check if the correct answer is '*'
	if(Answer == [A.text intValue] * [B.text intValue])
		return YES;
	else 
		return NO;
} 

-(BOOL)division{
	// check if the correct answer is '*'
	if(Answer == [A.text intValue] / [B.text intValue])
		return YES;
	else
		return NO;
} 

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
}

- (void)dealloc {
	[Finished release];
	[timeLable release];
	[score release];
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[A release];
	[B release];
	[C release];
	[questionMark release];
	[equalSign release];
	[Timer release];
	[profile release];
	[super dealloc];
}

@end	


