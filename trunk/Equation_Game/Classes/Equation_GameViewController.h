//
//  Equation_GameViewController.h
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckAnswer.h"

@interface Equation_GameViewController : UIViewController {
	CheckAnswer *currentAnswer;
	IBOutlet UILabel *label1; 
	IBOutlet UILabel *label2; 
	IBOutlet UILabel *label3;
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *Start;
	
}

-(IBAction)FirstButton:(id)sender;
-(IBAction)SecondButton:(id)sender;
-(IBAction)ThirdButton:(id)sender;
-(IBAction)FourthButton:(id)sender;
-(IBAction)Start:(id)sender;

@end

