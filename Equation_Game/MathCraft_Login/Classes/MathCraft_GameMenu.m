//
//  MathCraft_GameMenu.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-10.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MathCraft_GameMenu.h"


@implementation MathCraft_GameMenu

-(IBAction) back_Pressed {

	[self dismissModalViewControllerAnimated:YES];
}
	
	
-(IBAction) Equation_Game_Pressed {	
	
	Equation_GameViewController *gamemenuscreen = [[Equation_GameViewController alloc] initWithNibName:nil bundle:nil];
	gamemenuscreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	[self presentModalViewController:gamemenuscreen animated:YES];
	[gamemenuscreen release];

}


-(IBAction) Clock_Game_Pressed {

}


-(IBAction) Money_Game_Pressed {

}


-(IBAction) Mirror_Game_Pressed {

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
