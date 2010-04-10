//
//  Equation_GameViewController.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>
#import "NumberGenerate.h"

@interface Equation_GameViewController : UIViewController {
	 
	IBOutlet UILabel *firstNumberLabel;
	IBOutlet UILabel *secondNumberLabel; 
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *finishedLabel;
	IBOutlet UILabel *operandLabel;
	IBOutlet UILabel *equalsLabel;
	IBOutlet UILabel *answerLabel;
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UIButton *backButton;

	
	int timeLeft;
	int Score;
	int Answer;
	NSTimer *Timer;
	int Operand;
	int Operand2;
}
-(void)update_Label;
-(void)parse_Question;
-(void)parse_Question2;
-(void)parse_Question3;
-(IBAction)back_Pressed;
-(IBAction)Button_Pressed:(id)sender;


@end

