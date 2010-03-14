//
//  MathGame1_3ViewController.m
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MathGame1_3ViewController.h"

@implementation MathGame1_3ViewController

- (void)viewDidLoad {
	timeLable.text = @"30";
	timeLeft = 1000;
	[super viewDidLoad];
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	int Operand = 1 + arc4random() % 4;
	
	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
	

	

}

-(void)updateLabel {
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
	}
	else {
		Finished.text = @"Finished!";
	}
	timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
}



-(IBAction)addition:(id)sender
{
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	if(Answer == AvalueNumber + BvalueNumber  && timeLeft != 0){
		NSString *totalScore = score.text;
		int totalScoreNumber = [totalScore intValue];
		score.text = [NSString stringWithFormat:@"%ld", totalScoreNumber + 100];
	}
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	int Operand = 1 + arc4random() % 4;
	
	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
	
}


-(IBAction)subtraction:(id)sender
{
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	if(Answer == AvalueNumber - BvalueNumber  && timeLeft != 0){
		NSString *totalScore = score.text;
		int totalScoreNumber = [totalScore intValue];
		score.text = [NSString stringWithFormat:@"%ld", totalScoreNumber + 100];
	}
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	int Operand = 1 + arc4random() % 4;
	
	switch(Operand){
		case 1: 
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
	

			
	
} 

-(IBAction)multiplication:(id)sender
{
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	if(Answer == AvalueNumber * BvalueNumber  && timeLeft != 0){
		NSString *totalScore = score.text;
		int totalScoreNumber = [totalScore intValue];
		score.text = [NSString stringWithFormat:@"%ld", totalScoreNumber + 100];
	}
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	int Operand = 1 + arc4random() % 4;
	
	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
} 

-(IBAction)division:(id)sender
{
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	if(Answer == AvalueNumber / BvalueNumber  && timeLeft != 0){
		NSString *totalScore = score.text;
		int totalScoreNumber = [totalScore intValue];
		score.text = [NSString stringWithFormat:@"%ld", totalScoreNumber + 100];
	}
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	int Operand = 1 + arc4random() % 4;

	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
	
} 



//-(void)alertView:(UIAlertView*)



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



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end

/*

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}
*/

