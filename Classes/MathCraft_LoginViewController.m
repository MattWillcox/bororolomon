//
//  MathCraft_LoginViewController.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
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


-(int) getSoundValue {
	
	return sound;
}


-(void) setSoundValue: (int) i{

	sound = i;
	
}


-(IBAction) goButtonPressed {
	
	//read from file and compare account and password, and match.
	if ([self checkId:account.text andPassword:password.text])
	{
		
		MathCraft_MainMenu *mmscreen = [[MathCraft_MainMenu alloc] initWithNibName:nil bundle:nil];
		
		[mmscreen setSoundValue:[self getSoundValue]];
		
		mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:mmscreen animated:YES];
		[mmscreen release];
	}
	else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failed to login" 
														message:@"" 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}

		
}

-(BOOL) checkId: (NSString*) acc andPassword: (NSString*) pw{
	//get 
	MathCraft_User *new_user;
	
	NSString *filepath = [[NSBundle mainBundle] pathForResource:@"users" ofType:@"txt"];
	
	if (filepath) {
		NSString *textFromFile = [NSString stringWithContentsOfFile:filepath];
		NSArray *array = [[NSArray alloc] init]; 
		array = [textFromFile componentsSeparatedByString:@"\n"];
		
		//array has each line now
		
		NSArray *sub_array = [[NSArray alloc] init];
		
		//seperate each line to each attributes
		for (int i = 0; i < [array count] ; i++) {
		
			sub_array = [[array objectAtIndex:i] componentsSeparatedByString:@"\t"];
						 
			if ([[sub_array objectAtIndex:0] isEqualToString:acc]) {
				
				new_user = [[MathCraft_User alloc] initWithAccount:[sub_array objectAtIndex:0] 
													   andPassword:[sub_array objectAtIndex:1] 
													   andFullname:[sub_array objectAtIndex:2]];
				break;
			}
			
			if (i == ([array count]-1)) {
					//no matching account
				UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Account not found" 
																message:@"" 
															   delegate:nil 
													  cancelButtonTitle:@"OK" 
													  otherButtonTitles:nil];
				[alert show];
				[alert release];
				return NO;
			}

			
		}

	}
	else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"FilePath not found" 
														message:@"" 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}

	if ([[new_user getPassword] isEqualToString:pw]) {
	
		
		NSString* greeting = @"Hello, ";
		greeting = [greeting stringByAppendingString:[new_user getFullName]];
		greeting = [greeting stringByAppendingString:@"!"];
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Successfully logged in" 
														message:greeting 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
		[new_user release];
		return YES;
	}
	else {
		[new_user release];
		return NO;
	}

			 
			 
		 
	
}





-(IBAction) skipButtonPressed {
	
	//read from file for system default setup.
	NSString *filepath = [[NSBundle mainBundle] pathForResource:@"default_System" ofType:@"txt"];
	
	
	if (filepath) {
		NSString *textFromFile = [NSString stringWithContentsOfFile:filepath];
		int s_value = [textFromFile intValue];
		[self setSoundValue:s_value];
	}
	else {
		[self setSoundValue:1];
	}

	
	
	MathCraft_MainMenu *mmscreen = [[MathCraft_MainMenu alloc] initWithNibName:nil bundle:nil];
	
	[mmscreen setSoundValue:[self getSoundValue]];
	
	mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:mmscreen animated:YES];
	[mmscreen release];
	
}

-(IBAction) registerButtonPressed {
	
	MathCraft_Register *regscreen = [[MathCraft_Register alloc] initWithNibName:nil bundle:nil];
	regscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:regscreen animated:YES];
	[regscreen release];
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

-(IBAction) doneButtonPressed{}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {

	[go release];
	[skip release];
	[reg release];
	[account release];
	[password release];
	
    [super dealloc];
}

@end
