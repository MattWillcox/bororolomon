//
//  ViewProgressViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "ViewProgressViewController.h"
#import "ManageProfile.h"

@implementation ViewProgressViewController

-(IBAction)back_Pressed{
	[self dismissModalViewControllerAnimated:YES];
}

-(NSString *) submitHighScore:(NSString *)name score:(int) score {
	NSString *appKey = @"8449e1f2b3a509809d123f5e1af08eac";
	NSString *urlString = [NSString stringWithFormat:@"http://iphonelb.com/ws?app_key=%@&name=%@&score=%d",appKey,
						   name,score];
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

-(IBAction)score_Pressed{
	ManageProfile *profile = [ManageProfile sharedManager];
	
	if (profile.LoggedinUser.totalScore == totalScore) {
			
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You already submitted!" 
														message:@"You need to get a higher score to submit your score." 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
	else {
	
		NSString *response = [self submitHighScore: profile.LoggedinUser.UserName score: totalScore];
		
		profile.LoggedinUser.totalScore = totalScore;
		
	}
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
	scrollView.contentSize = CGSizeMake(320, 800);
	ManageProfile *profile = [ManageProfile sharedManager];
	equationGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame1Score];
	equationGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame2Score];
	moneyGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame1Score];
	moneyGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame2Score];
	mirrorGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame1Score];
	mirrorGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame2Score];
	clockGame1ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame1Score];
	clockGame2ScoreLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame2Score];
	equationGame1AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.EquationGame1Average];
	equationGame2AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.EquationGame2Average];
	moneyGame1AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.MoneyGame1Average];
	moneyGame2AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.MoneyGame2Average];
	mirrorGame1AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.MirrorGame1Average];
	mirrorGame2AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.MirrorGame2Average];
	clockGame1AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.ClockGame1Average];
	clockGame2AverageLabel.text = [NSString stringWithFormat:@"%4.1f",profile.LoggedinUser.ClockGame2Average];
	equationGame1TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame1Played];
	equationGame2TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.EquationGame2Played];
	moneyGame1TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame1Played];
	moneyGame2TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MoneyGame2Played];
	mirrorGame1TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame1Played];
	mirrorGame2TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.MirrorGame2Played];
	clockGame1TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame1Played];
	clockGame2TotalLabel.text = [NSString stringWithFormat:@"%ld",profile.LoggedinUser.ClockGame2Played];
	
	totalScore = profile.LoggedinUser.EquationGame1Score + profile.LoggedinUser.EquationGame2Score + 
	profile.LoggedinUser.MoneyGame1Score + profile.LoggedinUser.MoneyGame2Score + profile.LoggedinUser.MirrorGame1Score
	+ profile.LoggedinUser.MirrorGame2Score + profile.LoggedinUser.ClockGame1Score + profile.LoggedinUser.ClockGame2Score;
	totalScoreLabel.text = [NSString stringWithFormat:@"%ld",totalScore];
	
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
	[equationGame1AverageLabel release];
	[equationGame2AverageLabel release];
	[moneyGame1AverageLabel release];
	[moneyGame2AverageLabel release];
	[mirrorGame1AverageLabel release];
	[mirrorGame2AverageLabel release];
	[clockGame1AverageLabel release];
	[clockGame2AverageLabel release];
	[equationGame1TotalLabel release];
	[equationGame2TotalLabel release];
	[moneyGame1TotalLabel release];
	[moneyGame2TotalLabel release];
	[mirrorGame1TotalLabel release];
	[mirrorGame2TotalLabel release];
	[clockGame1TotalLabel release];
	[clockGame2TotalLabel release];
	[totalScoreLabel release];
	
    [super dealloc];
}

@end
