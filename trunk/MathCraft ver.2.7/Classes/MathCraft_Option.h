//
//  MathCraft_Option.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
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
