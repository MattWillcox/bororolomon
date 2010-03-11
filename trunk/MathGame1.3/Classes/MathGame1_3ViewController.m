//
//  MathGame1_3ViewController.m
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MathGame1_3ViewController.h"

@implementation MathGame1_3ViewController
@synthesize score;
@synthesize A;
@synthesize B;
@synthesize C;


-(IBAction)createQuesion:(id)sender
{
	int s  = 1 + arc4random() % 4;
	
	if(s = 1)
	{
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	A.text = [NSString stringWithFormat:@"%d\t", number1];
	B.text = [NSString stringWithFormat:@"%d\t", number2];
	C.text = [NSString stringWithFormat:@"%d\t", number1 + number2];
	}
	
	if(s = 2)
	{
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	A.text = [NSString stringWithFormat:@"%d\t", number1];
	B.text = [NSString stringWithFormat:@"%d\t", number2];
	C.text = [NSString stringWithFormat:@"%d\t", number1 - number2];
	}
	
	if(s = 3)
	{
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		A.text = [NSString stringWithFormat:@"%d\t", number1];
		B.text = [NSString stringWithFormat:@"%d\t", number2];
		C.text = [NSString stringWithFormat:@"%d\t", number1 * number2];
	}
	
	if(s = 4)
	{
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		int number3 = number1 * number2;
		A.text = [NSString stringWithFormat:@"%d\t", number3];
		B.text = [NSString stringWithFormat:@"%d\t", number2];
		C.text = [NSString stringWithFormat:@"%d\t", number1];
	}
}


-(IBAction)addition:(id)sender
{
	if(true)
	{
		NSString *totalScore = score.text;
		int totalScoreValue = [totalScore intValue];
		score.text = [NSString stringWithFormat:@"%d\t", totalScoreValue + 100];
	}
} 

-(IBAction)subtraction:(id)sender
{
	if(true)
	{
	NSString *totalScore = score.text;
	int totalScoreValue = [totalScore intValue];
	score.text = [NSString stringWithFormat:@"%d\t", totalScoreValue + 100];
	}
} 

-(IBAction)multiplication:(id)sender
{
	if(true)
	{
	NSString *totalScore = score.text;
	int totalScoreValue = [totalScore intValue];
	score.text = [NSString stringWithFormat:@"%d\t", totalScoreValue + 100];
	}
} 

-(IBAction)division:(id)sender
{
	if(true)
	{
	NSString *totalScore = score.text;
	int totalScoreValue = [totalScore intValue];
	score.text = [NSString stringWithFormat:@"%d\t", totalScoreValue + 100];
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

