//
//  MirrorGameViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "Mirror_Game.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"


@implementation Mirror_Game

-(IBAction)back_Push{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if ([player isOn]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];

	
	if (timeLeft == 0) {
		
		profile = [ManageProfile sharedManager];
		if (score > profile.LoggedinUser.MirrorGame1Score) {
			profile.LoggedinUser.MirrorGame1Score = score;
		}
		
		profile.LoggedinUser.MirrorGame1Average = 
		((profile.LoggedinUser.MirrorGame1Average*(float)profile.LoggedinUser.MirrorGame1Played) + (float)score) / ((float)profile.LoggedinUser.MirrorGame1Played+1);
		profile.LoggedinUser.MirrorGame1Played++;
		[profile saveUserProfile];
		
	}

	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction)button_Push:(id)sender {
	//Checks the current colour of the blocks, and then changes it to the following colour.
	if (timeLeft != 0) {
		if(score < 10){
		if([sender backgroundImageForState:UIControlStateNormal] == red){
			[sender setBackgroundImage:blue forState:UIControlStateNormal];
		}
		else if([sender backgroundImageForState:UIControlStateNormal] == blue){
			[sender setBackgroundImage:green forState:UIControlStateNormal];
		}
		else if([sender backgroundImageForState:UIControlStateNormal] == green){
			[sender setBackgroundImage:red forState:UIControlStateNormal];
		}
		else {
			[sender setBackgroundImage:red forState:UIControlStateNormal];
		}
		}
		else if(score >= 10 && score < 20){
			if([sender backgroundImageForState:UIControlStateNormal] == red){
				[sender setBackgroundImage:blue forState:UIControlStateNormal];
			}
			else if([sender backgroundImageForState:UIControlStateNormal] == blue){
				[sender setBackgroundImage:green forState:UIControlStateNormal];
			}
			else if([sender backgroundImageForState:UIControlStateNormal] == green){
				[sender setBackgroundImage:orange forState:UIControlStateNormal];
			}
			else {
				[sender setBackgroundImage:red forState:UIControlStateNormal];
			}
		}
		else {
			if([sender backgroundImageForState:UIControlStateNormal] == red){
				[sender setBackgroundImage:blue forState:UIControlStateNormal];
			}
			else if([sender backgroundImageForState:UIControlStateNormal] == blue){
				[sender setBackgroundImage:green forState:UIControlStateNormal];
			}
			else if([sender backgroundImageForState:UIControlStateNormal] == green){
				[sender setBackgroundImage:orange forState:UIControlStateNormal];
			}
			else if([sender backgroundImageForState:UIControlStateNormal] == orange){
				[sender setBackgroundImage:yellow forState:UIControlStateNormal];
			}
			else {
				[sender setBackgroundImage:red forState:UIControlStateNormal];
			}
		}

	}
	
}

-(IBAction)answer_Push:(id)sender {
	//Checks to see if the user pattern is a mirror of the question pattern. If it is, points are added, else, points are subtracted
	if (timeLeft != 0) {
		if ([button1 backgroundImageForState:UIControlStateNormal] == [button12 backgroundImageForState:UIControlStateNormal] && 
			[button2 backgroundImageForState:UIControlStateNormal] == [button11 backgroundImageForState:UIControlStateNormal] &&
			[button3 backgroundImageForState:UIControlStateNormal] == [button10 backgroundImageForState:UIControlStateNormal] &&
			[button4 backgroundImageForState:UIControlStateNormal] == [button15 backgroundImageForState:UIControlStateNormal] && 
			[button5 backgroundImageForState:UIControlStateNormal] == [button14 backgroundImageForState:UIControlStateNormal] &&
			[button6 backgroundImageForState:UIControlStateNormal] == [button13 backgroundImageForState:UIControlStateNormal] &&
			[button7 backgroundImageForState:UIControlStateNormal] == [button18 backgroundImageForState:UIControlStateNormal] && 
			[button8 backgroundImageForState:UIControlStateNormal] == [button17 backgroundImageForState:UIControlStateNormal] &&
			[button9 backgroundImageForState:UIControlStateNormal] == [button16 backgroundImageForState:UIControlStateNormal] ) {
			score++;
			scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
		}
		else {
			if (score != 0){
				score--;
				scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
			}
		}
		
		//Generates a random colour for the blocks in the question
		for (int i = 0; i < 3; i++) {
			if(score < 5){
			int colourPicker = arc4random() % 3;
			switch (colourPicker) {
				case 0:
					[[left_Buttons objectAtIndex: i] setBackgroundImage:red forState:UIControlStateNormal]; 
					break;
				case 1:
					[[left_Buttons objectAtIndex: i] setBackgroundImage:blue forState:UIControlStateNormal]; 
					break;
				case 2:
					[[left_Buttons objectAtIndex: i] setBackgroundImage:green forState:UIControlStateNormal]; 
					break;
			}
			}
			else if(score >= 3 && score < 6){
				int colourPicker = arc4random() % 4;
				switch (colourPicker) {
					case 0:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:red forState:UIControlStateNormal]; 
						break;
					case 1:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:blue forState:UIControlStateNormal]; 
						break;
					case 2:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:green forState:UIControlStateNormal]; 
						break;
					case 3:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:orange forState:UIControlStateNormal]; 
						break;

				}

			}
			else{
				int colourPicker = arc4random() % 5;
				switch (colourPicker) {
					case 0:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:red forState:UIControlStateNormal]; 
						break;
					case 1:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:blue forState:UIControlStateNormal]; 
						break;
					case 2:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:green forState:UIControlStateNormal]; 
						break;
					case 3:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:orange forState:UIControlStateNormal];
						break;
					case 4:
						[[left_Buttons objectAtIndex: i] setBackgroundImage:yellow forState:UIControlStateNormal];
						break;
						
				}
			}
		}
		
		[button10 setBackgroundImage:nil forState:UIControlStateNormal];
		[button11 setBackgroundImage:nil forState:UIControlStateNormal];
		[button12 setBackgroundImage:nil forState:UIControlStateNormal];
		[button13 setBackgroundImage:nil forState:UIControlStateNormal];
		[button14 setBackgroundImage:nil forState:UIControlStateNormal];
		[button15 setBackgroundImage:nil forState:UIControlStateNormal];
		[button16 setBackgroundImage:nil forState:UIControlStateNormal];
		[button17 setBackgroundImage:nil forState:UIControlStateNormal];
		[button18 setBackgroundImage:nil forState:UIControlStateNormal];

		
	}
}

-(void)update_Label { //Updates the timer every 1 second, if timer reads 0 game ends
	if (timeLeft != 0) {
		timeLeft--;
		timeLabel.text = [NSString stringWithFormat:@"%02d",timeLeft];
	}
	else {

		finishedLabel.text = @"FINISHED!";
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
	
    [super viewDidLoad];
	
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(update_Label) userInfo:nil repeats:YES];	
	timeLabel.text = @"60";
	timeLeft = 60;
	
	score = 0;
	
	red = [UIImage imageNamed:@"red.jpg"];
	blue = [UIImage imageNamed:@"blue.jpg"];
	green = [UIImage imageNamed:@"green.jpg"];
	yellow = [UIImage imageNamed:@"yellow.jpg"];
	orange = [UIImage imageNamed:@"orange.jpg"];
	
	left_Buttons = [[NSArray alloc] initWithObjects:
                    button1, button2, button3, button4, button5, button6, button7, button8, button9, nil];
	//right_Buttons = [[NSArray alloc] initWithObjects: button5, button6, button7, button8, nil];
	
	for (int i = 0; i < 9; i++) {
		int colourPicker = arc4random() % 3;
		switch (colourPicker) {
			case 0:
				[[left_Buttons objectAtIndex: i] setBackgroundImage:red forState:UIControlStateNormal]; 
				break;
			case 1:
				[[left_Buttons objectAtIndex: i] setBackgroundImage:blue forState:UIControlStateNormal]; 
				break;
			case 2:
				[[left_Buttons objectAtIndex: i] setBackgroundImage:green forState:UIControlStateNormal]; 
				break;
		}
	}
}



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
	
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[button5 release];
	[button6 release];
	[button7 release];
	[button8 release];
	[button9 release];
	[button10 release];
	[button11 release];
	[button12 release];
	[button13 release];
	[button14 release];
	[button15 release];
	[button16 release];
	[button17 release];
	[button18 release];

	[answer release];
	[scoreLabel release];
	[timeLabel release];
	[left_Buttons release];
	//[right_Buttons release];
	[red release];
	[blue release];
	[green release];
	[Timer release];
	[finishedLabel release];
	[profile release];
    [super dealloc];
}

@end
