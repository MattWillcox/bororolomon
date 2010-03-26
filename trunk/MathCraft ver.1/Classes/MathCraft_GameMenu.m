//
//  MathCraft_GameMenu.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */

#import "MathCraft_GameMenu.h"
#import "Equation_GameViewController.h"
#import "MathCraft_Music.h"


@implementation MathCraft_GameMenu

-(IBAction) backButtonPressed {

	[self dismissModalViewControllerAnimated:YES];
}
	
	
-(IBAction) equationGameButtonPressed {	
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player changeTrack:1];
		[player play];
		
		Equation_GameViewController *gamemenuscreen = [[Equation_GameViewController alloc] initWithNibName:nil bundle:nil];
		gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:gamemenuscreen animated:YES];
		[gamemenuscreen release];
		
	}
	else {
		Equation_GameViewController *gamemenuscreen = [[Equation_GameViewController alloc] initWithNibName:nil bundle:nil];
		gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:gamemenuscreen animated:YES];
		[gamemenuscreen release];
	}

	
}


-(IBAction) clockGameButtonPressed {
//To do
}


-(IBAction) moneyGameButtonPressed {
//To do
}


-(IBAction) mirrorGameButtonPressed {
//To do
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

    [super dealloc];
}


@end
