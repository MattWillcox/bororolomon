//
//  MirrorGameViewController.h
//  MirrorGame
//
//  Created by Matt Willcox on 10-03-21.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Mirror_Game : UIViewController {
	
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *button5;
	IBOutlet UIButton *button6;
	IBOutlet UIButton *button7;
	IBOutlet UIButton *button8;
	IBOutlet UIButton *button9;
	IBOutlet UIButton *button10;
	IBOutlet UIButton *button11;
	IBOutlet UIButton *button12;
	IBOutlet UIButton *button13;
	IBOutlet UIButton *button14;
	IBOutlet UIButton *button15;
	IBOutlet UIButton *button16;
	IBOutlet UIButton *button17;
	IBOutlet UIButton *button18;
	
	IBOutlet UIButton *answer;
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *finishedLabel;
	NSArray *left_Buttons;
	//NSArray *right_Buttons;
	UIImage *red;
	UIImage *blue;
	UIImage *green;
	UIImage *yellow;
	UIImage *orange;
	int score;
	NSTimer *Timer;
	int timeLeft;
	
}

-(void)update_Label;
-(IBAction)back_Push;
-(IBAction)button_Push: (id)sender;
-(IBAction)answer_Push: (id)sender;

@end

