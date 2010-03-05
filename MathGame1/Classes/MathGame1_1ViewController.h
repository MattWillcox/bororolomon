//
//  MathGame1_1ViewController.h
//  MathGame1.1
//
//  Created by Joanna So on 10年3月3日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MathGame1_1ViewController : UIViewController {
	IBOutlet UITextField *text1;
	
}

-(IBAction)addition:(id)sender;
-(IBAction)subtraction:(id)sender;
-(IBAction)multiplication:(id)sender;
-(IBAction)division:(id)sender;

@end

