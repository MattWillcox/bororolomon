//
//  PatternGame2ViewController.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>
#import "ManageProfile.h"


@interface PatternGame2ViewController : UIViewController {
	
	IBOutlet UILabel *pattern;
	IBOutlet UILabel *displayField;
	IBOutlet UIButton *answerButton;
	IBOutlet UIButton *testButton;
	IBOutlet UILabel *scoreLabel;
	IBOutlet UILabel *timeLabel;
	int setEquation;
	int number2;
	int Answer;
	int score;
	int timeLeft;
	NSTimer *Timer;
	ManageProfile *profile;
}


@property int number2;
@property (nonatomic, retain) UILabel *displayField;

-(IBAction) clear_Push;
-(IBAction)back_Pressed;
-(void)update_Label;
-(void)parse_Question;
-(void)parse_Question2;
-(void)parse_Question3;
-(int)currentDisplayValue;
-(IBAction)number_Push: (id)sender;
-(IBAction)answer_Push;
-(void)addDigit:(int)digit;

@end

