//
//  MoneyGame2ViewController.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>
#import "ManageProfile.h"

@interface MoneyGame2ViewController : UIViewController {
	IBOutlet UILabel *timeLable;
	IBOutlet UILabel *Finished;
	IBOutlet UILabel *score; 
	IBOutlet UILabel *A;
	IBOutlet UILabel *B;
	IBOutlet UILabel *dollarSign;
	IBOutlet UILabel *dot;
	
	IBOutlet UIButton *okBbutton;
	IBOutlet UIButton *cancelBbutton;
	IBOutlet UIButton *resetButton;
	IBOutlet UIButton *buttonTwo;
	IBOutlet UIButton *buttonOne;
	IBOutlet UIButton *buttonQuarter;
	IBOutlet UIButton *back_button;
	
	IBOutlet UIImageView *one1;
	IBOutlet UIImageView *one2;
	IBOutlet UIImageView *one3;
	IBOutlet UIImageView *one4;
	IBOutlet UIImageView *one5;
	
	IBOutlet UIImageView *two1;
	IBOutlet UIImageView *two2;
	IBOutlet UIImageView *two3;
	IBOutlet UIImageView *two4;
	IBOutlet UIImageView *two5;
	
	IBOutlet UIImageView *quarter1; 
	IBOutlet UIImageView *quarter2;
	IBOutlet UIImageView *quarter3;
	IBOutlet UIImageView *quarter4;
	IBOutlet UIImageView *quarter5;
	
	IBOutlet UIImageView *five;
	IBOutlet UIImageView *ten;
	IBOutlet UIImageView *twenty;
	
	int timeLeft;
	int totalScore;
	double answer;
	double price;
	
	NSTimer *Timer;
	
	int current;
	
	int count_1;
	int count_2;
	int count_3;
	ManageProfile *profile;
}

-(void)updateLabel;
- (void)viewDidLoad;
-(IBAction)submission:(id)sender;
-(IBAction)addOne:(id)sender;
-(IBAction)addTwo:(id)sender;
-(IBAction)addQuarter:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)cancel:(id)sender;
-(IBAction)back_button;


@end

