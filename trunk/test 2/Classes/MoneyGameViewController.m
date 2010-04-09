//
//  MoneyGameViewController.m
//  MoneyGame
//
//  Created by Joanna So on 10年3月20日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MoneyGameViewController.h"
#import "ManageProfile.h"

@implementation MoneyGameViewController

-(IBAction)cancel:(id)sender{
	if(current == 3 && count_3 > 0){
		if (count_3 == 1)
			quarter1.hidden = YES;
		if (count_3 == 2)
			quarter2.hidden = YES;
		if (count_3 == 3)
			quarter3.hidden = YES;
		if (count_3 == 4)
			quarter4.hidden = YES;
		if (count_3 == 5)
			quarter5.hidden = YES;
		count_3--;
		answer = answer - 0.25;
	}
	
	else if(current == 2 && count_2 > 0){
		if (count_2 == 1)
			two1.hidden = YES;
		if (count_2 == 2)
			two2.hidden = YES;
		if (count_2 == 3)
			two3.hidden = YES;
		if (count_2 == 4)
			two4.hidden = YES;
		if (count_2 == 5)
			two5.hidden = YES;
		count_2 --;
		answer = answer - 2.0;
	}
	else if(current == 1 && count_1 > 0){
		if (count_1 == 1)
			one1.hidden = YES;
		if (count_1 == 2)
			one2.hidden = YES;
		if (count_1 == 3)
			one3.hidden = YES;
		if (count_1 == 4)
			one4.hidden = YES;
		if (count_1 == 5)
			one5.hidden = YES;
		count_1--;
		answer = answer - 1.0;
	}
}


-(void)hide{
	//function to hide all the images
	one1.hidden = YES;
	one2.hidden = YES;
	one3.hidden = YES;
	one4.hidden = YES;
	one5.hidden = YES;
	
	two1.hidden = YES;
	two2.hidden = YES;
	two3.hidden = YES;
	two4.hidden = YES;
	two5.hidden = YES;
	
	quarter1.hidden = YES;
	quarter2.hidden = YES;
	quarter3.hidden = YES;
	quarter4.hidden = YES;
	quarter5.hidden = YES;	
	
}

-(void)resetCount{
	// function to reset all the count of pushing buttorn 
	count_1 = 0;
	count_2 = 0;
	count_3 = 0;
}


- (void)viewDidLoad {
	//This is the timer that counts down from 60 in 1 second intervals.
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
	timeLable.text = @"60";
	timeLeft = 60;
	score.text = @"0";
	totalScore = 0;
	
	[self resetCount];
	[self hide];
	
	[super viewDidLoad];
	
	// randomly create a question
	int number1 = 1 + arc4random() % 9;
	int number2 = 0 * (0 + arc4random() % 4);
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%02d", number2];
	
	
}


-(void)updateLabel { 
	//Updates the timer every 1 second, if timer reads 0 game ends
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
		timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
	}
	
	else {
		ManageProfile *profile = [ManageProfile sharedManager];
		if (totalScore > profile.LoggedinUser.MoneyGame1Score) {
			profile.LoggedinUser.MoneyGame1Score = totalScore;
			[profile saveUserProfile];
			
		}
		A.hidden = YES;
		B.hidden = YES;
		dollarSign.hidden = YES;
		dot.hidden = YES;
		
		[self hide];
		
		Finished.text = @"F I N I S H E D !";
	}
	
	
}

-(IBAction)addTwo:(id)sender{
	//buttorn action that adding the user's answer with two
	if (count_2 < 5){
		current = 2; 
		count_2++;
		answer = answer +2.0;
	}
	
	//adding a image on the screen if the user push the $2 buttorn
	if(timeLeft != 0){
		if (count_2 == 1)
			two1.hidden = NO;
		if (count_2 == 2)
			two2.hidden = NO;
		if (count_2 == 3)
			two3.hidden = NO;
		if (count_2 == 4)
			two4.hidden = NO;
		if (count_2 == 5)
			two5.hidden = NO;
	}
	
}

-(IBAction)addOne:(id)sender{
	//buttorn action that adding the user's answer with one
	if (count_1 < 5){
		current = 1; 
		count_1++;
		answer = answer +1.0;
	}
	//adding a image on the screen if the user push the $1 buttorn
	if(timeLeft != 0){
		if (count_1 == 1)
			one1.hidden = NO;
		if (count_1 == 2)
			one2.hidden = NO;
		if (count_1 == 3)
			one3.hidden = NO;
		if (count_1 == 4)
			one4.hidden = NO;
		if (count_1 == 5)
			one5.hidden = NO;
	}
}

-(IBAction)addQuarter:(id)sender{
	//buttorn action that adding the user's answer with quarter
	if (count_3 < 5 && totalScore >= 5){
		current = 3; 
		count_3++;
		answer = answer +0.25;
	}
	//adding a image on the screen if the user push the $0.25 buttorn
	if(timeLeft != 0 && totalScore >= 5){
		if (count_3 == 1)
			quarter1.hidden = NO;
		if (count_3 == 2)
			quarter2.hidden = NO;
		if (count_3 == 3)
			quarter3.hidden = NO;
		if (count_3 == 4)
			quarter4.hidden = NO;
		if (count_3 == 5)
			quarter5.hidden = NO;
	}
}

-(IBAction)reset:(id)sender{
	//reset the user's answer back to 0 and clear all the image on the screeen
	[self hide];
	[self resetCount];
	answer = 0;
}


-(IBAction)submission:(id)sender{
	//submiss the answer and check it correct or not
	if(timeLeft != 0){
		NSString *Avalue = A.text;
		double AvalueNumber = [Avalue doubleValue];
		NSString *Bvalue = B.text;
		double BvalueNumber = [Bvalue doubleValue];
		
		//adding score if it is correct 
		if(answer == AvalueNumber + (BvalueNumber / 100.0)){
			totalScore++;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		else {
			if (totalScore > 0) {
				totalScore--;
				score.text = [NSString stringWithFormat:@"%ld", totalScore];
			}
		}

		
	[self hide];
	[self resetCount];
	answer = 0;
		
	int number1;
	int number2;
	
	if (totalScore >= 5){
		number1 = 1 + arc4random() % 10;
		number2 = 25 * (arc4random() % 4);
	}
		
	else{
		number1 = 1 + arc4random() % 10;
		number2 = 0 * (arc4random() % 4);
	}
	
	A.text = [NSString stringWithFormat:@"%ld",  number1];
	B.text = [NSString stringWithFormat:@"%02d", number2];
	}

}

/*
-(void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*)event{
	
	UITouch *touch =[[event allTouches] anyObject];	
	CGPoint location = [touch locationInView:self.view];
	one.center = location;	
	
}*/

-(IBAction) back_button {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];
	
	[self dismissModalViewControllerAnimated:YES];

}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)dealloc {
	[timeLable release];
	[Finished release];
	[score release];
	[A release];
	[B release];
	[dollarSign release];
	[dot release];
	
	[okBbutton release];
	[resetButton release];
	[buttonTwo release];
	[buttonOne release];
	[buttonQuarter release];
	
	[one1 release];
	[one2 release];
	[one3 release];
	[one4 release];
	[one5 release];
	
	[two1 release];
	[two2 release];
	[two3 release];
	[two4 release];
	[two5 release];
	
	[quarter1 release];
	[quarter2 release];
	[quarter3 release];
	[quarter4 release];
	[quarter5 release];
    [super dealloc];
}

@end
