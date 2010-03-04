//
//  MathGame1ViewController.h
//  MathGame1
//
//  Created by Joanna So on 10年3月1日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MathGame1ViewController : UIViewController {
	IBOutlet UIButton *button1;
	IBOutlet UIButton *button2;
	IBOutlet UIButton *button3;
	IBOutlet UIButton *button4;
	IBOutlet UITextField *text1;
	

}

-(IBAction)buttonPressed:(id)sender;
-(IBAction)createQuesyion:(id)sender;

@end

@end

