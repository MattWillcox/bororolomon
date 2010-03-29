//
//  ClockGameViewController.h
//  ClockGame
//
//  Created by Nick Ho on 3/18/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface Clock_Game_Analog : UIViewController<UITextFieldDelegate> {
	IBOutlet UIImageView *hourhand;
	IBOutlet UIImageView *minhand;
	IBOutlet UILabel *displayHour;
	IBOutlet UILabel *displayMin;
	IBOutlet UILabel *showscore;
	IBOutlet UILabel *displayquestion;
	IBOutlet UILabel *timelabel;
	
	int answer_Hour;
	int answer_Min;
	int hour;
	int min;
	int disp_min;
	int disp_hour;
	int score;
	int timeleft;
	NSTimer *Timer;
}

@property (nonatomic, retain) UIImageView *hourhand;
@property (nonatomic, retain) UIImageView *minhand;
@property (nonatomic, retain) UILabel *displayHour;
@property (nonatomic, retain) UILabel *displayMin;
@property (nonatomic, retain) UILabel *showscore;
@property (nonatomic, retain) UILabel *displayquestion;
@property (nonatomic, retain) UILabel *timelabel;


-(IBAction) inc_Hour;
-(IBAction) dec_Hour;
-(IBAction) inc_Min;
-(IBAction) dec_Min;
-(void)update_Label;

-(IBAction) update_hr_Display;
-(IBAction) update_min_Display;

-(IBAction) parse_Question;

//Changes the orientation of the clock hand images
-(void) sethands;


//Checks to see if the answer inputed by the player is correct
-(IBAction) checkanswer;

//Returns the user to the previous page
-(IBAction) returnpreviouspage;

@end

