//
//  Equation_GameViewController.h
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Equation_GameViewController : UIViewController {
	
	IBOutlet UILabel *label1; 
	IBOutlet UILabel *label2; 
	IBOutlet UILabel *label3;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *Finished;
	IBOutlet UILabel *Operandlabel;
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *back;
	int timeLeft;
	int Score;
	int Answer;
	NSTimer *timer;
}

-(void)updateLabel;
-(IBAction)Back_Pressed;
-(IBAction)FirstButton:(id)sender;
-(IBAction)SecondButton:(id)sender;
-(IBAction)ThirdButton:(id)sender;
-(IBAction)FourthButton:(id)sender;

@end

