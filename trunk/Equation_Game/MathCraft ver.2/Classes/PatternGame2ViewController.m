//
//  PatternGame2ViewController.m
//  PatternGame2
//
//  Created by Matt Willcox on 10-03-23.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "PatternGame2ViewController.h"
#import "MathCraft_Music.h"


@implementation PatternGame2ViewController

@synthesize number1;
@synthesize number2;
@synthesize displayField;

-(IBAction)back_Pressed{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];
	
	
	[self dismissModalViewControllerAnimated:YES];
}

-(IBAction) clear_Push {

	[displayField setText:@""];
	[self setNumber2:0];
	
}


-(IBAction)number_Push: (id)sender
{

	if(timeLeft !=0){
		[self addDigit:[[sender titleForState:UIControlStateNormal] intValue]];
		[displayField setText:[NSString stringWithFormat:@"%ld", [self currentDisplayValue]]];
	}

}

-(IBAction)answer_Push {
	if(timeLeft != 0){
		if ([displayField.text isEqualToString:[NSString stringWithFormat:@"%ld", Answer]] == YES) {
			score++;
			scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
			displayField.text = @"";
			[self setNumber2: 0];
			[self parse_Question];
		}
		else if([displayField.text isEqualToString:[NSString stringWithFormat:@"%ld", Answer]] == NO && score != 0){
			score--;
			scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
			displayField.text = @"";
			[self setNumber2: 0];
			[self parse_Question];
		}
		else {
			displayField.text = @"";
			[self setNumber2: 0];
			[self parse_Question];
		}
	}

}

-(void)addDigit:(int)digit {
	[self setNumber2:[self number2] * 10 + digit];
}

-(int)currentDisplayValue
{
	return [self number2];
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
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(update_Label) userInfo:nil repeats:YES];	
	timeLabel.text = @"60";
	timeLeft = 60;
    [super viewDidLoad];
	score = 0;
	[self parse_Question];
	
}

-(void)update_Label {
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
		timeLabel.text = [NSString stringWithFormat:@"%02d",timeLeft];
	}
	else {
		pattern.text = @"FINISHED!";
	}

	
}

-(void)parse_Question {
	int n = 1 + arc4random() % 9;
	NSString *tempPattern;
	
	int equationPicker = arc4random() % 5;
	
	switch (equationPicker) {
		case 0:
			setEquation = 2*n;
			tempPattern = [NSString stringWithFormat:@"%ld", setEquation];
			for (int i = 0; i < 3; i++) {
				n++;
				setEquation = 2*n;
				tempPattern = [tempPattern stringByAppendingString: @" "];
				tempPattern = [tempPattern stringByAppendingString:
							   [NSString stringWithFormat:@"%ld", setEquation]];
			}
			n++;
			Answer = 2*n;
			break;
		case 1:
			setEquation = 4*n;
			tempPattern = [NSString stringWithFormat:@"%ld", setEquation];
			for (int i = 0; i < 3; i++) {
				n++;
				setEquation = 4*n;
				tempPattern = [tempPattern stringByAppendingString: @" "];
				tempPattern = [tempPattern stringByAppendingString:
							   [NSString stringWithFormat:@"%ld", setEquation]];
			}
			n++;
			Answer = 4*n;
			break;
		case 2:
			setEquation = 5*n;
			tempPattern = [NSString stringWithFormat:@"%ld", setEquation];
			for (int i = 0; i < 3; i++) {
				n++;
				setEquation = 5*n;
				tempPattern = [tempPattern stringByAppendingString: @" "];
				tempPattern = [tempPattern stringByAppendingString:
							   [NSString stringWithFormat:@"%ld", setEquation]];
			}	
			n++;
			Answer = 5*n;
			break;
		case 3:
			setEquation = 3*n;
			tempPattern = [NSString stringWithFormat:@"%ld", setEquation];
			for (int i = 0; i < 3; i++) {
				n++;
				setEquation = 3*n;
				tempPattern = [tempPattern stringByAppendingString: @" "];
				tempPattern = [tempPattern stringByAppendingString:
							   [NSString stringWithFormat:@"%ld", setEquation]];
			}	
			n++;
			Answer = 3*n;
			break;
		case 4:
			setEquation = n;
			tempPattern = [NSString stringWithFormat:@"%ld", setEquation];
			for (int i = 0; i < 3; i++) {
				n++;
				setEquation = n;
				tempPattern = [tempPattern stringByAppendingString: @" "];
				tempPattern = [tempPattern stringByAppendingString:
							   [NSString stringWithFormat:@"%ld", setEquation]];
			}	
			n++;
			Answer = n;
			break;
	}
	
	pattern.text = tempPattern;
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

	[pattern release];
	[displayField release];
	[answerButton release];
	[testButton release];
	[scoreLabel release];
	[timeLabel release];
	
    [super dealloc];
}

@end
