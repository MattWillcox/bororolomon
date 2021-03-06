//
//  MathCraft_Option.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */


#import "MathCraft_Option.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"

@implementation MathCraft_Option

@synthesize switch1;


-(IBAction) backButtonPressed {
	ManageProfile *profile = [ManageProfile sharedManager];
	if (switch1.on == YES) {
		profile.LoggedinUser.Sound = YES;
	}
	else {
		profile.LoggedinUser.Sound = NO;
	}

	[profile saveUserProfile];
	//go back
	[self dismissModalViewControllerAnimated:YES];
	
}



-(IBAction) switchEnabled {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	
	
	if (switch1.on == YES) {
		[player setSound:[NSNumber numberWithInt:1]];
		[player play];
	}
	else {
		[player setSound:[NSNumber numberWithInt:0]];
		[player stop];
	}

	
	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	
	if (player.sound == [NSNumber numberWithInt:1]) {
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
