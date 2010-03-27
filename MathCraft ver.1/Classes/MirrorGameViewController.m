//
//  MIrrorGameViewController.m
//  MIrrorGame
//
//  Created by Matt Willcox on 10-03-21.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MirrorGameViewController.h"

@implementation MirrorGameViewController

-(IBAction)button_Push:(id)sender {
	if (timeLeft != 0) {
	
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
	
}

-(IBAction)answer_Push:(id)sender {
	
	if (timeLeft != 0) {
	if ([button1 backgroundImageForState:UIControlStateNormal] == [button5 backgroundImageForState:UIControlStateNormal] && 
		[button2 backgroundImageForState:UIControlStateNormal] == [button6 backgroundImageForState:UIControlStateNormal] &&
		[button3 backgroundImageForState:UIControlStateNormal] == [button7 backgroundImageForState:UIControlStateNormal] &&
		[button4 backgroundImageForState:UIControlStateNormal] == [button8 backgroundImageForState:UIControlStateNormal]) {
		score++;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", score];
	}
	else if (([button1 backgroundImageForState:UIControlStateNormal] != [button5 backgroundImageForState:UIControlStateNormal] || 
			 [button2 backgroundImageForState:UIControlStateNormal] != [button6 backgroundImageForState:UIControlStateNormal] ||
			 [button3 backgroundImageForState:UIControlStateNormal] != [button7 backgroundImageForState:UIControlStateNormal] ||
			 [button4 backgroundImageForState:UIControlStateNormal] != [button8 backgroundImageForState:UIControlStateNormal]) && 
	score != 0){
		score--;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", score];

	}
	
	
	for (int i = 0; i < 4; i++) {
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
	
	[button5 setBackgroundImage:nil forState:UIControlStateNormal];
	[button6 setBackgroundImage:nil forState:UIControlStateNormal];
	[button7 setBackgroundImage:nil forState:UIControlStateNormal];
	[button8 setBackgroundImage:nil forState:UIControlStateNormal];
	
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
	blue = [UIImage imageNamed:@"Blue.jpg"];
	green = [UIImage imageNamed:@"Green.jpg"];
	
	left_Buttons = [[NSArray alloc] initWithObjects:
                    button1, button2, button3, button4, nil];
	right_Buttons = [[NSArray alloc] initWithObjects: button5, button6, button7, button8, nil];

	for (int i = 0; i < 4; i++) {
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
	[answer release];
	[scoreLabel release];
	[timeLabel release];
	[left_Buttons release];
	[right_Buttons release];
	[red release];
	[blue release];
	[green release];
	[Timer release];
	[finishedLabel release];
    [super dealloc];
}

@end
