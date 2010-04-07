//
//  MathCraft_Option.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
 */


#import "MathCraft_Option.h"


@implementation MathCraft_Option

@synthesize switch1;


-(IBAction) backButtonPressed {
	
	//go back
	[self dismissModalViewControllerAnimated:YES];
	
}

-(int) getSoundValue {
	
	return sound;
}


-(void) setSoundValue: (int) i{
	
	sound = i;
	
}

-(IBAction) switchEnabled {
	
	
	
	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	if ([self getSoundValue] == 1 ) {
		[switch1 setOn:YES];
	}
	else {
		[switch1 setOn:NO];
	}

	
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
	
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
	[switch1 release];
    [super dealloc];
}


@end
