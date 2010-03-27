//
//  MIrrorGameViewController.h
//  MIrrorGame
//
//  Created by Matt Willcox on 10-03-21.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MirrorGameViewController : UIViewController {
	
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *button5;
	IBOutlet UIButton *button6;
	IBOutlet UIButton *button7;
	IBOutlet UIButton *button8;
	IBOutlet UIButton *answer;
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *finishedLabel;
	NSArray *left_Buttons;
	NSArray *right_Buttons;
	UIImage *red;
	UIImage *blue;
	UIImage *green;
	int score;
	NSTimer *Timer;
	int timeLeft;
	
}

-(void)update_Label;
-(IBAction)button_Push: (id)sender;
-(IBAction)answer_Push: (id)sender;

@end

