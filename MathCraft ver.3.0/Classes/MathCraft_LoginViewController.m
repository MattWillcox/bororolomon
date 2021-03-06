//
//  MathCraft_LoginViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "MathCraft_LoginViewController.h"
#import "MathCraft_MainMenu.h"
#import "MathCraft_Register.h"


@implementation MathCraft_LoginViewController

@synthesize account;
@synthesize password;
@synthesize go;
@synthesize skip;
@synthesize reg;




-(IBAction) goButtonPressed {
	
	
	profile = [[ManageProfile alloc] initWithUserInfo:account.text UserPassword:password.text];
	
	if (profile.LoggedinUser.IsGuestUser)
	{
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Account does not exist!" 
														message:@"" 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	else {
		
		NSString *greeting = @"Welcome, ";
		greeting = [greeting stringByAppendingString:profile.LoggedinUser.UserName];
		greeting = [greeting stringByAppendingString:@"!"];
		
		
		
		if (!profile.LoggedinUser.Sound) {
			player.sound = [NSNumber numberWithInt:0];
			[player stop];
			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:greeting 
															message:@"Good Luck and Have Fun!\nSound = OFF" 
														   delegate:nil 
												  cancelButtonTitle:@"OK" 
												  otherButtonTitles:nil];
			[alert show];
			[alert release];
		}
		else {
			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:greeting 
															message:@"Good Luck and Have Fun!\nSound = ON" 
														   delegate:nil 
												  cancelButtonTitle:@"OK" 
												  otherButtonTitles:nil];
			[alert show];
			[alert release];
		}

		
		
		MathCraft_MainMenu *mmscreen = [[MathCraft_MainMenu alloc] initWithNibName:nil bundle:nil];
		mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:mmscreen animated:YES];
		[mmscreen release];
	}
	
	
	

	
}


-(IBAction) skipButtonPressed {
	
	
	profile = [[ManageProfile alloc] initGuestUserProfile];
	
	
	
	MathCraft_MainMenu *mmscreen = [[MathCraft_MainMenu alloc] initWithNibName:nil bundle:nil];
	
	mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:mmscreen animated:YES];
	[mmscreen release];
	
}

-(IBAction) registerButtonPressed {
	
	profile = [[ManageProfile alloc] initGuestUserProfile];
	
	MathCraft_Register *regscreen = [[MathCraft_Register alloc] initWithNibName:nil bundle:nil];
	regscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:regscreen animated:YES];
	[regscreen release];
	
	[profile release];
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	
	//start sound
	player = [[MathCraft_Music alloc] init];
	[player setSound:[NSNumber numberWithInt:1]];
	[player play];
	

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

-(IBAction) doneButtonPressed{}

-(IBAction) openHelpWebsite {
	
	NSURL *url = [[NSURL alloc] initWithString:@"http://code.google.com/p/bororolomon/wiki/Tutorial"];
	[[UIApplication sharedApplication] openURL:url];
	[url release];
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[player release];
	[go release];
	[skip release];
	[reg release];
	[account release];
	[password release];
	[profile release];
    [super dealloc];
}

@end
