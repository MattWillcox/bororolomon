//
//  MathCraft_MainMenu.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "MathCraft_MainMenu.h"
#import "MathCraft_GameMenu.h"
#import "MathCraft_Progress.h"
#import "MathCraft_Option.h"
#import "ViewProgressViewController.h"

@implementation MathCraft_MainMenu



-(IBAction) optionButtonPressed {
	//Takes the user to the optons menu
	MathCraft_Option *optionscreen = [[MathCraft_Option alloc] initWithNibName:nil bundle:nil];
	optionscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:optionscreen animated:YES];
	[optionscreen release];
}


-(IBAction) gameMenuButtonPressed {
	
	//Takes the user to the game selection menu
	MathCraft_GameMenu *gamemenuscreen = [[MathCraft_GameMenu alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];
}


-(IBAction) leaderboardButtonPressed {
	//To be implemented. Will open the website with the leaderboard
}


-(IBAction) progressButtonPressed {
	
	ViewProgressViewController *viewprogressscreen = [[ViewProgressViewController alloc] initWithNibName:nil bundle:nil];
	viewprogressscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:viewprogressscreen animated:YES];
	[viewprogressscreen release];
	
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
}
*/


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
	//Takes the user to the group website
	NSURL *url = [[NSURL alloc] initWithString: @"http://code.google.com/p/bororolomon/"];
	[[UIApplication sharedApplication] openURL:url];
	[url release];
}

- (void)dealloc {

    [super dealloc];
}


@end
