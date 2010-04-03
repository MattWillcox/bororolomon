//
//  ViewProgressViewController.m
//  ViewProgress
//
//  Created by Matt Willcox on 10-04-02.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "ViewProgressViewController.h"
#import "ManageProfile.h"

@implementation ViewProgressViewController

-(IBAction)back_Pressed{
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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	ManageProfile *profile = [ManageProfile sharedManager];
	equationGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame1Score];
	equationGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame2Score];
	moneyGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame1Score];
	moneyGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame2Score];
	mirrorGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame1Score];
	mirrorGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame2Score];
	clockGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame1Score];
	clockGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame2Score];

    [super viewDidLoad];
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
	[equationGame1ScoreLabel release];
	[equationGame2ScoreLabel release];
	[moneyGame1ScoreLabel release];
	[moneyGame2ScoreLabel release];
	[mirrorGame1ScoreLabel release];
	[mirrorGame2ScoreLabel release];
	[clockGame1ScoreLabel release];
	[clockGame2ScoreLabel release];
    [super dealloc];
}

@end
