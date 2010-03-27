//
//  MathCraft_Register.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */


#import "MathCraft_Register.h"


@implementation MathCraft_Register

@synthesize done;
@synthesize cancel;
@synthesize account;
@synthesize password;
@synthesize password_confirm;
@synthesize fullname;



-(IBAction) doneButtonPressed {
	
	int checker = 0;
	
	ManageProfile *profile = [ManageProfile sharedManager];
	
	profile.LoggedinUser.UserName = account.text;
	profile.LoggedinUser.Password = password.text;
	
	if ([profile isUserUnique:account.text]==NO) {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Account name already exists"
														message:@"This account name is already taken. Try other account name." 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
		checker--;
		
	}

		
	else if ([profile isPasswordValid:password.text]==NO) {
	
		UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Error" 
														 message:@"Password has to be 4-25 characters long." 
														delegate:nil 
											   cancelButtonTitle:@"OK" 
											   otherButtonTitles:nil];
		[alert2 show];
		[alert2 release];
		checker--;
		
	}

			
	else if ([profile isUserNameValid:account.text]==NO) {
	
		UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Error" 
														 message:@"Account name has to be 4-25 characters long including alphabets, numbers or underscore(_)" 
														delegate:nil 
											   cancelButtonTitle:@"OK" 
											   otherButtonTitles:nil];
		[alert1 show];
		[alert1 release];
		checker--;
	}

				
	
	
	
	if (checker == 0) {
		
		
		if ([[password text] isEqualToString:[password_confirm text]]) {
			
			//save account info to system.
			//[self saveNewAccount:[account text] andPassword:[password text] andFullname:[fullname text]];
			
			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" 
															message:@"Your account is successfully created!" 
														   delegate:nil 
												  cancelButtonTitle:@"OK" 
												  otherButtonTitles:nil];
			[alert show];
			[alert release];
			
			
			[profile createUserProfile:account.text Password:password.text];
			
			[profile saveUserProfile];
			

			MathCraft_MainMenu *mmscreen = [[MathCraft_MainMenu alloc] initWithNibName:nil bundle:nil];
			mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
			[self presentModalViewController:mmscreen animated:YES];
			[mmscreen release];
			
		}
		else {
			
			UIAlertView *alert4 = [[UIAlertView alloc] initWithTitle:@"Error" 
															 message:@"Password is incorrectly confirmed." 
															delegate:nil 
												   cancelButtonTitle:@"OK" 
												   otherButtonTitles:nil];
			[alert4 show];
			[alert4 release];
			
		}
		
	}
	else {
		
		
	}
}


-(IBAction) done_key{} //To be renamed


-(void) saveNewAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn {
	//save to file.
	//To be implemented

	
}


-(IBAction) cancelButtonPressed {
	
	[self dismissModalViewControllerAnimated:YES];
	
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
	[fullname release];
	[account release];
	[password_confirm release];
	[password release];
	[done release];
	[cancel release];
    [super dealloc];
}


@end
