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
	timeLeft = 30;
	[super viewDidLoad];
	Score = 0;
	
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
			break;
		case 2:
			while (number1 < number2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			number1 = number1 * number2;
			Answer = number2;
			break;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
	

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
	if(Operand == 1 && timeLeft != 0){
		Score++;
		score.text = [NSString stringWithFormat:@"%ld", Score];
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
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			number1 = number1 * number2;
			Answer = number2;
			break;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
	
}


-(IBAction)subtraction:(id)sender
{
	if(Operand == 2  && timeLeft != 0){
		Score++;
		score.text = [NSString stringWithFormat:@"%ld", Score];
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
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			number1 = number1 * number2;
			Answer = number2;
			break;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
			
	
} 

-(IBAction)multiplication:(id)sender
{
	if(Operand == 3  && timeLeft != 0){
		Score++;
		score.text = [NSString stringWithFormat:@"%ld", Score];
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
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			number1 = number1 * number2;
			Answer = number2;
			break;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
	
	
} 

-(IBAction)division:(id)sender
{
	if(Operand == 4  && timeLeft != 0){
		Score++;
		score.text = [NSString stringWithFormat:@"%ld", Score];
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
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			number1 = number1 * number2;
			Answer = number2;
			break;
	}
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	C.text = [NSString stringWithFormat:@"%ld", Answer];
	
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

