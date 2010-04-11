//
//  MathCraft_GameMenu.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "MathCraft_GameMenu.h"
#import "PatternGamesMenuViewController.h"
#import "MathCraft_Music.h"
#import "EquationGamesMenuViewController.h"
#import "ClockGamesMenu.h"
#import "MoneyGamesMenu.h"


@implementation MathCraft_GameMenu

-(IBAction) backButtonPressed {

	[self dismissModalViewControllerAnimated:YES];
}
	
	
-(IBAction) equationGameButtonPressed {	
	//Opens up the equation game
	EquationGamesMenuViewController *gamemenuscreen = [[EquationGamesMenuViewController alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];
	
}


-(IBAction) clockGameButtonPressed {
	//Opens up the clock game
	ClockGamesMenu *gamemenuscreen = [[ClockGamesMenu alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];
	
}


-(IBAction) moneyGameButtonPressed {
	//Oepns up the money game
	MoneyGamesMenu *moneymenuscreen = [[MoneyGamesMenu alloc] initWithNibName:nil bundle:nil];
	moneymenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:moneymenuscreen animated:YES];
	[moneymenuscreen release];
}


-(IBAction) mirrorGameButtonPressed {
	//Opens up the mirror game
	PatternGamesMenuViewController *patternmenuscreen = [[PatternGamesMenuViewController alloc] initWithNibName:nil bundle:nil];
	patternmenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:patternmenuscreen animated:YES];
	[patternmenuscreen release];
	
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
