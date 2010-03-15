//
//  MathCraft_Register.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MathCraft_Register.h"


@implementation MathCraft_Register

@synthesize done;
@synthesize cancel;
@synthesize account;
@synthesize password;
@synthesize password_confirm;
@synthesize fullname;



-(IBAction) done_Pressed {
	
	int checker = 0;
	
	//check for length and characters used for each field.
	int a_length = [account.text length];
	int p_length = [password.text length];
	int fn_length = [fullname.text length];
	
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
			
			if ([[sub_array objectAtIndex:0] isEqualToString:account.text]) {
				//account already exists.
				UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Account name already exsists"
																message:@"This account name is already taken. Try other account name." 
															   delegate:nil 
													  cancelButtonTitle:@"OK" 
													  otherButtonTitles:nil];
				[alert show];
				[alert release];
				
				checker--;
			}
			else {
				//account is not taken.
			}

		}
	
	}
	
	if (checker == 0) {
		
		for (int i = 0; i < a_length; i++){
			if ([account.text characterAtIndex:i] == ' ') {
				UIAlertView *alert0 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Account name CANNOT contain a space between characters" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
				[alert0 show];
				[alert0 release];
				checker--;
				break;
			}
		}
		
		if (a_length < 3 || a_length > 11) {
			UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Account name has to be 3-10 character long." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert1 show];
			[alert1 release];
			checker--;
			
		}
		
		else if (p_length < 3 || p_length > 11) {
			UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Password has to be 3-10 character long." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert2 show];
			[alert2 release];
			checker--;
			
		}
		
		else if (fn_length < 3 || fn_length > 21) {
			UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your name has to be 3-20 character long." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert3 show];
			[alert3 release];
			checker--;
		}
	}
	
	if (checker == 0) {
		
		
		if ([[password text] isEqualToString:[password_confirm text]]) {
			
			//save account info to system.
			[self save_newAccount:[account text] andPassword:[password text] andFullname:[fullname text]];
			
			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" 
															message:@"Your account is successfully created!" 
														   delegate:nil 
												  cancelButtonTitle:@"OK" 
												  otherButtonTitles:nil];
			[alert show];
			[alert release];
			
			
			[self dismissModalViewControllerAnimated:YES];
		}
		else {
			
			UIAlertView *alert4 = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Password is incorrectly confirmed." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
			[alert4 show];
			[alert4 release];
			
		}
		
	}
	else {
		
		
	}
}



-(void) save_newAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn {
	//save to file.

	
}





-(IBAction) cancel_Pressed {
	
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

-(IBAction) done_key{}

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
