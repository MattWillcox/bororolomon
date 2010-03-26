//
//  MathCraft_Option.h
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */


#import <UIKit/UIKit.h>

//Options logic view. User's preferences.
@interface MathCraft_Option : UIViewController {
	
	IBOutlet UISwitch *switch1;
	

	int sound;
	
	
}

@property (nonatomic, retain) UISwitch *switch1;


//Back button logic. Go one step back.
-(IBAction) backButtonPressed;


//Trun voice on/off
-(IBAction) switchEnabled;

@end