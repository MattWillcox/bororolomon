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

-(IBAction)addScore:(id)sender
{
	NSString *totalScore = score.text;
	int totalScoreValue = [totalScore intValue];
}

-(IBAction)createQuesion:(id)sender
{
}

-(IBAction)addition:(id)sender
{
	NSString *s = @"+";
	[text1 setText:(s)];
} 

-(IBAction)subtraction:(id)sender
{
	NSString *s = @"-";
	[text1 setText:(s)];	
} 

-(IBAction)multiplication:(id)sender
{
	NSString *s = @"x";
	[text1 setText:(s)];	
} 

-(IBAction)division:(id)sender
{
	NSString *s = @"/";
	[text1 setText:(s)];	
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


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


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
