//
//  MathCraft_LoginViewController.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright Simon Fraser University 2010. All rights reserved.
//

#import "MathCraft_LoginViewController.h"
#import "MathCraft_MM.h"

@implementation MathCraft_LoginViewController

@synthesize account;
@synthesize password;
@synthesize go;
@synthesize skip;
@synthesize reg;

-(int) get_sound_val {
	
	return sound;
}


-(void) set_sound_val: (int) i{

	sound = i;
	
}


-(IBAction) go_Pressed {
	
	//read from file and compare account and password, and match.
	if ([self check_id:account.text andPassword:password.text])
	{
		
		MathCraft_MM *mmscreen = [[MathCraft_MM alloc] initWithNibName:nil bundle:nil];
		
		[mmscreen set_sound_val:[self get_sound_val]];
		
		mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
		[self presentModalViewController:mmscreen animated:YES];
		[mmscreen release];
	}
	else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failed to login" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		[alert show];
		[alert release];
	}

		
}

-(BOOL) check_id: (NSString*) acc andPassword: (NSString*) pw{
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

	if ([[new_user get_password] isEqualToString:pw]) {
	
		
		NSString* greeting = @"Hello, ";
		greeting = [greeting stringByAppendingString:[new_user get_fullname]];
		greeting = [greeting stringByAppendingString:@"!"];
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Successfully logged in" message:greeting delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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





-(IBAction) skip_Pressed {
	
	//read from file for system default setup.
	NSString *filepath = [[NSBundle mainBundle] pathForResource:@"default_System" ofType:@"txt"];
	
	
	if (filepath) {
		NSString *textFromFile = [NSString stringWithContentsOfFile:filepath];
		int s_value = [textFromFile intValue];
		[self set_sound_val:s_value];
	}
	else {
		[self set_sound_val:1];
	}

	
	
	MathCraft_MM *mmscreen = [[MathCraft_MM alloc] initWithNibName:nil bundle:nil];
	
	[mmscreen set_sound_val:[self get_sound_val]];
	
	mmscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:mmscreen animated:YES];
	[mmscreen release];
	
}

-(IBAction) reg_Pressed {
	
	regscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:regscreen animated:YES];
	
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	regscreen = [[MathCraft_Register alloc] initWithNibName:nil bundle:nil];
	
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

-(IBAction) done_key{}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[regscreen release];
	[go release];
	[skip release];
	[reg release];
	[account release];
	[password release];
	
    [super dealloc];
}

@end
