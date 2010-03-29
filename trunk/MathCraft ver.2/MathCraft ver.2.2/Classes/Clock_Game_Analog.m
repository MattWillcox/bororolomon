//
//  ClockGameViewController.m
//  ClockGame
//
//  Created by Nick Ho on 3/18/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Clock_Game_Analog.h"
#import "MathCraft_Music.h"

#define DEGREES_TO_RADIANS(__ANGLE__) ((__ANGLE__) / 180.0 * M_PI)

@implementation Clock_Game_Analog

@synthesize hourhand;
@synthesize minhand;
@synthesize displayHour;
@synthesize displayMin;
@synthesize showscore;
@synthesize displayquestion;
@synthesize timelabel;




-(IBAction) inc_Hour {
	//When the "+" button of hour is pressed, the hour in the player's answer is incremented by 1
	hour = (hour+1)%12;
	[self update_hr_Display];
}

-(IBAction) dec_Hour {
	//When the "+" button of hour is pressed, the hour in the player's answer is decremented by 1
	hour--;
	[self update_hr_Display];
}

-(IBAction) inc_Min {
	//When the "+" button of hour is pressed, the min in the player's answer is incremented by 1
	min = (min+5)%60;
	
	[self update_min_Display];
}

-(IBAction) dec_Min {
	//When the "+" button of hour is pressed, the min in the player's answer is decremented by 1
	min = min-5;
	[self update_min_Display];
}


-(IBAction) update_hr_Display {

	if (hour == 0) {
		hour = 12;
	}

	[self sethands];
}

-(IBAction) update_min_Display {
	
	
	if (min < 0) {
		min = 55;
	}
	
	[self sethands];
}


-(void) sethands{
	int acc_hour_Deg = round((min/60.0) * 30.0);
	int hour_Deg = hour*30 + acc_hour_Deg;
	int min_Deg = min*6;
	
	//Sets the rotational degrees to the set hour and min value
	CGAffineTransform cgaRotateHr = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(hour_Deg));  
 	CGAffineTransform cgaRotateMin = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(min_Deg));
	
	//Rotates the actual images
	[hourhand setTransform:cgaRotateHr];  
	[minhand setTransform:cgaRotateMin]; 
}




-(IBAction) checkanswer{
	
	if (timeleft != 0) {
		
		
		//Checks if the user inputed hour and min corresponds to the hour and min of the answer
		if ((answer_Hour == hour) && (answer_Min == min)) {
			//If the two are equal, then the player recieves +1 to his or her score
			score++;
		}
		else {
			if (score > 0) {
				score--;
			}
		}
		
		
		
		showscore.text = [NSString stringWithFormat:@"%d", score];
		
		[self parse_Question];
	}
}

-(IBAction) parse_Question {
	
	//Resets the hour and min values to a new value
	disp_hour = arc4random()%12 + 1;
	disp_min = arc4random()%12 * 5;
	
	//Creates modifier variables
	int modmin = arc4random()%8*5;
	int questionselect = arc4random()%2;
	
	if (questionselect == 0){
		displayquestion.text = [NSString stringWithFormat:@"ADD %d minutes from the time below.", modmin];
		if ((disp_min + modmin) >= 60){
			answer_Hour = disp_hour + 1;
			
			if (answer_Hour > 12){
				answer_Hour = 1;
			}
			answer_Min = disp_min + modmin - 60;
		}
		else{ 
			answer_Hour = disp_hour;
			answer_Min = disp_min + modmin;
		}
	}
	else {
		displayquestion.text = [NSString stringWithFormat:@"SUBTRACT %d minutes from the time below", modmin];
		if ((disp_min - modmin) < 0){
			answer_Hour = disp_hour - 1;
			if (answer_Hour < 1){
				answer_Hour = 12;
			}
			answer_Min = 60 - (modmin - disp_min);
		}
		else{
			answer_Min = disp_min - modmin;
			answer_Hour = disp_hour;
		}
	}
	
	displayHour.text = [NSString stringWithFormat:@"%2d", disp_hour];
	displayMin.text = [NSString stringWithFormat:@"%02d", disp_min];
	
	
	
	
	
	
}


-(IBAction) returnpreviouspage{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if ([player isOn]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];
	
	[self dismissModalViewControllerAnimated:YES];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	score = 0;
	hour = 12;
	disp_hour = 12;
	min = 0;
	disp_min = 0;
	answer_Hour = 12;
	answer_Min = 0;
	Timer = Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(update_Label) userInfo:nil repeats:YES];
	timelabel.text = @"60";
	timeleft = 60;
	
	showscore.text = [NSString stringWithFormat:@"%d", score];

	//[self update_min_Display];
	//[self update_hr_Display];
	[self sethands];
	[self parse_Question];
	
}

-(void)update_Label { //Updates the timer every 1 second, if timer reads 0 game ends
	
	if (timeleft != 0) {
		timeleft = timeleft--;
	}
	else {
		displayquestion.text = @"F I N I S H E D !";
	}
	
	timelabel.text = [NSString stringWithFormat:@"%02d",timeleft];
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
	[hourhand release];
	[minhand release];
	[displayMin release];
	[displayHour release];
	[showscore release];

	
    [super dealloc];
}

@end
