//
//  MathGame1_3ViewController.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>

@interface MathGame1_3ViewController : UIViewController {
	IBOutlet UIButton *button1; //	+
	IBOutlet UIButton *button2; //	-
	IBOutlet UIButton *button3; //	*
	IBOutlet UIButton *button4; //	/
	IBOutlet UILabel *timeLable;
	IBOutlet UILabel *Finished;
	IBOutlet UILabel *score;
	IBOutlet UILabel *A;
	IBOutlet UILabel *B;
	IBOutlet UILabel *C;
	IBOutlet UILabel *questionMark; //	?
	IBOutlet UILabel *equalSign; //	=
	NSTimer *Timer;
	int timeLeft;
	int Answer;
	int totalScore;
	
}

@property (nonatomic,retain) UILabel *score;
@property (nonatomic,retain) UILabel *A;
@property (nonatomic,retain) UILabel *B;
@property (nonatomic,retain) UILabel *C;

// Back button logic. Returns the user to the previouse page
-(IBAction)back_Pressed;

// Generates the a new random question question with automatic difficulty scaling
-(void) parse_Question;

-(void)updateLabel;
-(void)viewDidLoad;

// button 1, 2, 3, and 4 (+, -, *, and / button) logic
-(void)operand:(id)sender;
// internal, used by 'operand' function
-(BOOL)addition;
-(BOOL)subtraction;
-(BOOL)multiplication;
-(BOOL)division;



@end

