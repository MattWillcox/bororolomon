//
//  MathCraft_MainMenu.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
 */


#import "MathCraft_MainMenu.h"
#import "MathCraft_GameMenu.h"
#import "MathCraft_Progress.h"


@implementation MathCraft_MainMenu


-(int) getSoundValue {
	
	return sound;
}


-(void) setSoundValue: (int) i{
	
	sound = i;
	
}


-(IBAction) optionButtonPressed {
	
	[optionscreen setSoundValue:[self getSoundValue]];
	
	optionscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:optionscreen animated:YES];
	
}


-(IBAction) gameMenuButtonPressed {
	
	
	MathCraft_GameMenu *gamemenuscreen = [[MathCraft_GameMenu alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];
}


-(IBAction) leaderboardButtonPressed {
	
}


-(IBAction) progressButtonPressed {
	
	//***TEMPORARY SCREEN FOR NOW***
	
	MathCraft_Progress *progscreen = [[MathCraft_Progress alloc] initWithNibName:nil bundle:nil];
	progscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:progscreen animated:YES];
	[progscreen release];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	optionscreen = [[MathCraft_Option alloc] initWithNibName:nil bundle:nil];
	
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

-(IBAction) openProjectWebsite: (id) sender {
	
	NSURL *url = [[NSURL alloc] initWithString: @"http://code.google.com/p/bororolomon/"];
	[[UIApplication sharedApplication] openURL:url];
	[url release];
}

- (void)dealloc {
	[optionscreen release];
    [super dealloc];
}


@end
