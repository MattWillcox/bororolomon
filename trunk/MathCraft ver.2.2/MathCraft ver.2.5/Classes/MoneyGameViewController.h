//
//  MoneyGameViewController.h
//  MoneyGame
//
//  Created by Joanna So on 10年3月20日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathCraft_Music.h"

@interface MoneyGameViewController : UIViewController {
	IBOutlet UILabel *timeLable;
	IBOutlet UILabel *Finished;
	IBOutlet UILabel *score; 
	IBOutlet UILabel *A;
	IBOutlet UILabel *B;
	IBOutlet UILabel *dollarSign;
	IBOutlet UILabel *dot;
	
	IBOutlet UIButton *okBbutton;
	IBOutlet UIButton *resetButton;
	IBOutlet UIButton *buttonTwo;
	IBOutlet UIButton *buttonOne;
	IBOutlet UIButton *buttonQuarter;
	
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
	
	int timeLeft;
	int totalScore;
	double answer;
	int current;

	
	int count_1;
	int count_2;
	int count_3;
	
	NSTimer *Timer;
}

-(void)updateLabel;
-(void)viewDidLoad;
-(IBAction)submission:(id)sender;
-(IBAction)addOne:(id)sender;
-(IBAction)addTwo:(id)sender;
-(IBAction)addQuarter:(id)sender;
-(IBAction)reset:(id)sender;
-(IBAction)back_button;

	

@end

