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

-(IBAction)addScore:(id)sender
{
	NSString *totalScore = score.text;
	int totalScoreValue = [totalScore intValue] + 1;
	score = totalScoreValue;
}


-(IBAction)createQuesion:(id)sender
{
	A.text = [NSString stringWithFormat:@"%d\t", 1 + arc4random() % 9];
}

-(IBAction)addition:(id)sender
{
	NSString *s = @"+";
	[text1 setText:(s)];
	int n = 100; 
	score.text = [NSString stringWithFormat:@"%i", n];
	int a = 1 + arc4random() % 9;
	int b = 1 + arc4random() % 9;
	A.text = [NSString stringWithFormat:@"%d\t", a];
	B.text = [NSString stringWithFormat:@"%d\t", b];
	C.text = [NSString stringWithFormat:@"%d\t", a + b];
} 

-(IBAction)subtraction:(id)sender
{
	NSString *s = @"-";
	[text1 setText:(s)];
	if ([operand isEqualToString:s] ) score++;
} 

-(IBAction)multiplication:(id)sender
{
	NSString *s = @"x";
	[text1 setText:(s)];
	if ([operand isEqualToString:s] ) score++;
} 

-(IBAction)division:(id)sender
{
	NSString *s = @"/";
	[text1 setText:(s)];
	if ([operand isEqualToString:s] ) score++;
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

@end
