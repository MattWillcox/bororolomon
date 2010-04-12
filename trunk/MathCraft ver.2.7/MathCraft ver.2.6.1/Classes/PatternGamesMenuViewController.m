//
//  PatterGamesMenuViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */


#import "Mirror_Game.h"
#import "PatternGame2ViewController.h"
#import "PatternGamesMenuViewController.h"
#import "MathCraft_Music.h"


@implementation PatternGamesMenuViewController

-(IBAction)Game1_Push {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player changeTrack:4];
		[player play];
		
	}

	
		Mirror_Game *gamescreen = [[Mirror_Game alloc] initWithNibName:nil bundle:nil];
		gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:gamescreen animated:YES];
		[gamescreen release];
	
	
}
-(IBAction)Game2_Push{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player changeTrack:4];
		[player play];
		
	}

		PatternGame2ViewController *gamescreen = [[PatternGame2ViewController alloc] initWithNibName:nil bundle:nil];
		gamescreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:gamescreen animated:YES];
		[gamescreen release];
	
	
}
-(IBAction)Back_Push{
	[self dismissModalViewControllerAnimated:YES];
}


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
