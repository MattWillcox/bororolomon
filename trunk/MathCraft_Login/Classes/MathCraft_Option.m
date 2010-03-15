//
//  MathCraft_Option.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-10.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MathCraft_Option.h"


@implementation MathCraft_Option

@synthesize switch1;


-(IBAction) back_Pressed {
	
	//write to file with current state

	//
//	NSString *s_value;
//	
//	if (switch1.on){
//	
//		s_value = @"1\r\n";
//		[self set_sound_val:1];
//		
//	}
//	else {
//		
//		s_value = @"0\r\n";
//		[self set_sound_val:0];
//	
//	}
//
//	
//	//write to file
//	
//	NSString *filepath = [[NSBundle mainBundle] pathForResource:@"default_System" ofType:@"txt"];
//	
//	if (filepath) {
//		
//	
//		NSError *error;
//	
//		if([s_value writeToFile:filepath atomically:YES]) {
//	
//		}
//		else {
//			UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"FILE WRITING ERROR" 
//															message:@"" 
//														   delegate:nil 
//												  cancelButtonTitle:@"OK" 
//												  otherButtonTitles:nil];
//			[alert show];
//			[alert release];
//		}
//	}
//	else {
//		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"FILEPATH WRITING ERROR" 
//														message:@"" 
//													   delegate:nil 
//											  cancelButtonTitle:@"OK" 
//											  otherButtonTitles:nil];
//		[alert show];
//		[alert release];
//	}
//	
//	[filepath release];
//	
//
//
//go back
[self dismissModalViewControllerAnimated:YES];
//	
}

-(int) get_sound_val {
	
	return sound;
}


-(void) set_sound_val: (int) i{
	
	sound = i;
	
}


-(IBAction) switch_Enabled {
	
	
	
	
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
	
	if ([self get_sound_val] == 1 ) {
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
