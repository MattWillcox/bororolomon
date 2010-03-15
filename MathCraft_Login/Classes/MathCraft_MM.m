//
//  MathCraft_MM.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MathCraft_MM.h"
#import "MathCraft_GameMenu.h"
#import "MathCraft_Progress.h"


@implementation MathCraft_MM


-(int) get_sound_val {
	
	return sound;
}


-(void) set_sound_val: (int) i{
	
	sound = i;
	
}


-(IBAction) option_Pressed {

	[optionscreen set_sound_val:[self get_sound_val]];
	
	optionscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:optionscreen animated:YES];
	
}


-(IBAction) gamemenu_Pressed {


	MathCraft_GameMenu *gamemenuscreen = [[MathCraft_GameMenu alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];
}


-(IBAction) leaderboard_Pressed {
	
}


-(IBAction) progress_Pressed {
	
	//***TEMPORARY SCREEN FOR NOW***
	
	MathCraft_Progress *progscreen = [[MathCraft_Progress alloc] initWithNibName:nil bundle:nil];
	progscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:progscreen animated:YES];
	[progscreen release];
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

-(IBAction) open_bororolomonURL: (id) sender {
	
	NSURL *url = [[NSURL alloc] initWithString: @"http://code.google.com/p/bororolomon/"];
	[[UIApplication sharedApplication] openURL:url];
	[url release];
}

- (void)dealloc {
	[optionscreen release];
    [super dealloc];
}


@end
