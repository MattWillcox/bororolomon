//
//  MathGame1_3ViewController.h
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MathGame1_3ViewController : UIViewController {
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UILabel *score;
	IBOutlet UILabel *A;
	IBOutlet UILabel *B;
	IBOutlet UILabel *C;
}

@property (nonatomic,retain) UILabel *score;
@property (nonatomic,retain) UILabel *A;
@property (nonatomic,retain) UILabel *B;
@property (nonatomic,retain) UILabel *C;


-(IBAction)createQuesion:(id)sender;
-(IBAction)addition:(id)sender;
-(IBAction)subtraction:(id)sender;
-(IBAction)multiplication:(id)sender;
-(IBAction)division:(id)sender;



@end

