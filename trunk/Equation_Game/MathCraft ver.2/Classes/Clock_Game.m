//
//  ClockGameViewController.m
//  ClockGame
//
//  Created by Nick Ho on 3/18/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Clock_Game.h"
#import "MathCraft_Music.h"

#define DEGREES_TO_RADIANS(__ANGLE__) ((__ANGLE__) / 180.0 * M_PI)

@implementation Clock_Game

@synthesize hourhand;
@synthesize minhand;
@synthesize displayHour;
@synthesize displayMin;
@synthesize showscore;
@synthesize displayquestion;
@synthesize timelabel;




-(IBAction) inc_Hour {
	
	hour = (hour+1)%12;
	[self update_hr_Display];
}

-(IBAction) dec_Hour {
	
	hour--;
	[self update_hr_Display];
}

-(IBAction) inc_Min {
	
	min = (min+5)%60;
	
	[self update_min_Display];
}

-(IBAction) dec_Min {
	
	min = min-5;
	[self update_min_Display];
}


-(IBAction) update_hr_Display {
	
	if (hour == 0) {
		hour = 12;
	}
	displayHour.text = [NSString stringWithFormat:@"%d", hour];
}

-(IBAction) update_min_Display {
	
	
	if (min < 0) {
		min = 55;
	}
	
	NSString* temp;
	
	if (min < 10) {
		
		temp = @"0";
		NSString* temp1 = [NSString stringWithFormat:@"%d", min];
		temp = [temp stringByAppendingFormat:temp1];
	}
	else {
		
		temp = [NSString stringWithFormat:@"%d", min];
	}
	
	
	displayMin.text = temp;
	
}


-(void) sethands{
	int acc_hour_Deg = round((answer_Min/60.0) * 30.0);
	int hour_Deg = answer_Hour*30 + acc_hour_Deg;
	int min_Deg = answer_Min*6;
	
	//Sets the rotational degrees to the set hour and min value
	CGAffineTransform cgaRotateHr = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(hour_Deg));  
 	CGAffineTransform cgaRotateMin = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(min_Deg));
	
	//Rotates the actual images
	[hourhand setTransform:cgaRotateHr];  
	[minhand setTransform:cgaRotateMin]; 
}




-(IBAction) checkanswer{
	
	if (timeleft != 0) {
		
		int checkhour = [displayHour.text intValue];
		int checkmin = [displayMin.text intValue];
		
		//Checks if the user inputed hour and min corresponds to the hour and min of the answer
		if ((answer_Hour == checkhour) && (checkmin == answer_Min)) {
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
	answer_Hour = arc4random()%12 + 1;
	answer_Min = arc4random()%12 * 5;
	
	//Creates modifier variables
	int modmin = arc4random()%12*5;
	int questionselect = arc4random()%2;
	
	if (questionselect == 0){
		displayquestion.text = [NSString stringWithFormat:@"What is the time if %d mins were added?", modmin];
		if ((min + modmin) > 60){
			qhour = hour + 1;
			qmin = ((min+modmin)-60);
			if (qhour > 12){
				qhour = 1;
			}
		}
		else{ 
			qmin = min + modmin;}
	}
	else if (questionselect = 1){
		displayquestion.text = [NSString stringWithFormat:@"What is the time if %d mins were subtracted?", modmin];
		if ((min-modmin) < 0){
			qhour = hour - 1;
			qmin = (60+(min-modmin));
			if (qhour < 1){
				qhour = 12;
			}
		}
		else{
			qmin = min - modmin;}
	}
	
	
	[self sethands];
	
	
}


-(IBAction) returnpreviouspage{
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
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
	min = 0;
	Timer = Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(update_Label) userInfo:nil repeats:YES];
	timelabel.text = @"60";
	timeleft = 60;
	
	showscore.text = [NSString stringWithFormat:@"%d", score];
	displayHour.text = [NSString stringWithFormat:@"%d", hour];
	displayMin.text = [NSString stringWithFormat:@"%d", min];
	[self update_min_Display];
	[self update_hr_Display];
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
