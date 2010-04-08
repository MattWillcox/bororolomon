//
//  MathGame1_3ViewController.m
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

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
	
	
	[self dismissModalViewControllerAnimated:YES];
}

-(void) parse_Question {
	
	int operand = 1 + arc4random() % 2;
	int number1, number2;
	
	switch (operand) {
		// randomly to choose one of the operand
			
		// additon question
		case 1:
			number1 = 1+arc4random() % 9;
			number2 = 1+arc4random() % 9;
			
			while (number1 == 2 && number2 == 2) {
				number1 = 1+arc4random() % 9;
				number2 = 1+arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
		// subtraction question	
		case 2:
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
			
			while ((number1 < number2) || (number1 == 4 && number2 == 2)) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
	
	
}

-(void) parse_Question2 {
	
	int operand = 1 + arc4random() % 3;
	int number1, number2;
	
	switch (operand) {
			// randomly to choose one of the operand
			
			// additon question
		case 1:
			number1 = 1+arc4random() % 20;
			number2 = 1+arc4random() % 20;
			
			while (number1 == 2 && number2 == 2) {
				number1 = 1+arc4random() % 20;
				number2 = 1+arc4random() % 20;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
			// subtraction question	
		case 2:
			number1 = 1 + arc4random() % 20;
			number2 = 1 + arc4random() % 20;
			
			while ((number1 < number2) || (number1 == 4 && number2 == 2)) {
				number1 = 1 + arc4random() % 20;
				number2 = 1 + arc4random() % 20;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
			//multiplication question
		case 3:
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
			
			while ((number1 == 2 && number2 == 2)) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
}
-(void) parse_Question3 {
	
	int operand = 1 + arc4random() % 4;
	int number1, number2;
	
	switch (operand) {
			// randomly to choose one of the operand
			
			// additon question
		case 1:
			number1 = 1+arc4random() % 20;
			number2 = 1+arc4random() % 20;
			
			while (number1 == 2 && number2 == 2) {
				number1 = 1+arc4random() % 20;
				number2 = 1+arc4random() % 20;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
			// subtraction question	
		case 2:
			number1 = 1 + arc4random() % 20;
			number2 = 1 + arc4random() % 20;
			
			while ((number1 < number2) || (number1 == 4 && number2 == 2)) {
				number1 = 1 + arc4random() % 20;
				number2 = 1 + arc4random() % 20;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
			//multiplication question
		case 3:
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
			
			while ((number1 == 2 && number2 == 2)) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
			//division question 	
		case 4:
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
			
			while (
				   number1 == 2 && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
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
  
  
  
  -(void)updateLabel {
	  //Updates the timer every 1 second, if timer reads 0 game ends
	  if (timeLeft != 0) {
		  timeLeft = timeLeft--;
		  timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
		  
	  }
	  else {
		  ManageProfile *profile = [ManageProfile sharedManager];
		  if (totalScore > profile.LoggedinUser.EquationGame2Score) {
			  profile.LoggedinUser.EquationGame2Score = totalScore;
			  [profile saveUserProfile];
		  }
		  A.text = @"";
		  B.text = @"";
		  C.text = @"";
		  questionMark.text = @"";
		  equalSign.text =@"";
		  Finished.text = @"F I N I S H E D !";
	  }
  }
  
  
  
  -(IBAction)addition:(id)sender
{
	//answer "+" to the question
	if (timeLeft != 0) {
		
		NSString *Avalue = A.text;
		int AvalueNumber = [Avalue intValue];
		NSString *Bvalue = B.text;
		int BvalueNumber = [Bvalue intValue];
		
		//adding score if it is correct
		if(Answer == AvalueNumber + BvalueNumber){		
			totalScore++;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		
		else if(Answer != AvalueNumber + BvalueNumber && totalScore >0){
			totalScore--;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		if(totalScore < 10){
		[self parse_Question];
		}
		else if(totalScore >= 10 && totalScore < 20){
			[self parse_Question2];
		}
		else {
			[self parse_Question3];
		}

	}
}
  
  
  -(IBAction)subtraction:(id)sender
{
	//answer "-" to the question
	if (timeLeft != 0) {
		
		NSString *Avalue = A.text;
		int AvalueNumber = [Avalue intValue];
		NSString *Bvalue = B.text;
		int BvalueNumber = [Bvalue intValue];
		
		if(Answer == AvalueNumber - BvalueNumber){		
			totalScore++;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		
		else if(Answer != AvalueNumber - BvalueNumber && totalScore >0){
			totalScore--;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		
		if(totalScore < 10){
			[self parse_Question];
		}
		else if(totalScore >= 10 && totalScore < 20){
			[self parse_Question2];
		}
		else {
			[self parse_Question3];
		}
	}
}
  
  -(IBAction)multiplication:(id)sender{
	  //answer "*" to the question
	  if (timeLeft != 0) {
		  
		  NSString *Avalue = A.text;
		  int AvalueNumber = [Avalue intValue];
		  NSString *Bvalue = B.text;
		  int BvalueNumber = [Bvalue intValue];
		  
		  if(Answer == AvalueNumber * BvalueNumber){		
			  totalScore++;
			  score.text = [NSString stringWithFormat:@"%ld", totalScore];
		  }
		  
		  else if(Answer != AvalueNumber * BvalueNumber && totalScore >0){
			  totalScore--;
			  score.text = [NSString stringWithFormat:@"%ld", totalScore];
		  }
		  
		  if(totalScore < 10){
			  [self parse_Question];
		  }
		  else if(totalScore >= 10 && totalScore < 20){
			  [self parse_Question2];
		  }
		  else {
			  [self parse_Question3];
		  }	
	  }
  } 
  
  -(IBAction)division:(id)sender {
	  //answer "/" to the question
	  if (timeLeft != 0) {
		  
		  NSString *Avalue = A.text;
		  int AvalueNumber = [Avalue intValue];
		  NSString *Bvalue = B.text;
		  int BvalueNumber = [Bvalue intValue];
		  
		  if(Answer == AvalueNumber / BvalueNumber){		
			  totalScore++;
			  score.text = [NSString stringWithFormat:@"%ld", totalScore];
		  }
		  
		  else if(Answer != AvalueNumber / BvalueNumber && totalScore >0){
			  totalScore--;
			  score.text = [NSString stringWithFormat:@"%ld", totalScore];
		  }
		  
		  if(totalScore < 10){
			  [self parse_Question];
		  }
		  else if(totalScore >= 10 && totalScore < 20){
			  [self parse_Question2];
		  }
		  else {
			  [self parse_Question3];
		  }
	  }		
	  
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
	  [super dealloc];
  }
  
  @end	
  
  
