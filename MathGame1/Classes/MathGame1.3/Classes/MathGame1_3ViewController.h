//
//  MathGame1_3ViewController.h
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MathGame1_3ViewController : UIViewController {
	IBOutlet UITextField *text1;
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UILabel *score;
	
	
}
@property (nonatomic,retain) UILabel *score;

-(IBAction)updateScore:(id)sender;
-(IBAction)addition:(id)sender;
-(IBAction)subtraction:(id)sender;
-(IBAction)multiplication:(id)sender;
-(IBAction)division:(id)sender;



@end

