//
//  MoneyGamesMenu.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-28.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MoneyGamesMenu.h"
#import "MathCraft_Music.h"
#import "MoneyGameViewController.h"
#import "MoneyGame2ViewController.h"

@implementation MoneyGamesMenu


-(IBAction)Game1_Push {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player changeTrack:3];
		[player play];
		
	}
	
	
	MoneyGameViewController *gamescreen = [[MoneyGameViewController alloc] initWithNibName:nil bundle:nil];
	gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamescreen animated:YES];
	[gamescreen release];
	
	
}
-(IBAction)Game2_Push{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player changeTrack:3];
		[player play];
		
	}
	
	
	MoneyGame2ViewController *gamescreen = [[MoneyGame2ViewController alloc] initWithNibName:nil bundle:nil];
	gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamescreen animated:YES];
	[gamescreen release];
	
}
-(IBAction)Back_Push{
	[self dismissModalViewControllerAnimated:YES];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

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


- (void)dealloc {
    [super dealloc];
}


@end
