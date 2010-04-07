//
//  Equation_GameViewController.h
//  Equation_Game
//
/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
 */

#import <UIKit/UIKit.h>

@interface Equation_GameViewController : UIViewController {
	
	IBOutlet UILabel *firstNumberLabel;
	IBOutlet UILabel *secondNumberLabel; 
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *finishedLabel;
	IBOutlet UILabel *operandLabel;
	IBOutlet UILabel *equalsLabel;
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *backButton;
	int timeLeft;
	int Score;
	int Answer;
	NSTimer *Timer;
}

-(void)update_Label;
-(IBAction)back_Pressed;
-(IBAction)first_Button_Pressed:(id)sender;
-(IBAction)second_Button_Pressed:(id)sender;
-(IBAction)third_Button_Pressed:(id)sender;
-(IBAction)fourth_Button_Pressed:(id)sender;

@end

