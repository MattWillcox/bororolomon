//
//  Equation_GameViewController.h
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright Bororolomon 2010. All rights reserved.
//

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

