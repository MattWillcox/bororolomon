//
//  PatternGame2ViewController.h
//  PatternGame2
//
//  Created by Matt Willcox on 10-03-23.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

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
}


@property int number2;
@property (nonatomic, retain) UILabel *displayField;

-(IBAction) clear_Push;
-(IBAction)back_Pressed;
-(void)update_Label;
-(void)parse_Question;
-(int)currentDisplayValue;
-(IBAction)number_Push: (id)sender;
-(IBAction)answer_Push;
-(void)addDigit:(int)digit;

@end

