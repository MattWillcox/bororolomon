//
//  ClockGamesMenu.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "ClockGamesMenu.h"


@implementation ClockGamesMenu

-(IBAction) game1_Pressed {

	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if ([player isOn]) {
		[player changeTrack:2];
		[player play];
	}
	
	
	Clock_Game	*gamescreen = [[Clock_Game alloc] initWithNibName:nil bundle:nil];
	gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamescreen animated:YES];
	[gamescreen release];
	
}


-(IBAction) game2_Pressed {

	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if ([player isOn]) {
		[player changeTrack:2];
		[player play];
	}
	
	
	Clock_Game_Analog *gamescreen = [[Clock_Game_Analog alloc] initWithNibName:nil bundle:nil];
	gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamescreen animated:YES];
	[gamescreen release];
	
}


-(IBAction) backPressed {
	
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
