//
//  MathCraft_LoginViewController.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>
#import "MathCraft_Register.h"
#import "MathCraft_User.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"


//Log-in view logic. Handles user login.
@interface MathCraft_LoginViewController : UIViewController {

	IBOutlet UIButton *go;
	IBOutlet UIButton *reg;
	IBOutlet UIButton *skip;
	IBOutlet UITextField *account;
	IBOutlet UITextField *password;
	MathCraft_Music *player;
	int sound;
	ManageProfile *profile;
	
}

@property (nonatomic, retain) UIButton *go;
@property (nonatomic, retain) UIButton *reg;
@property (nonatomic, retain) UIButton *skip;
@property (nonatomic, retain) UITextField *account;
@property (nonatomic, retain) UITextField *password;

//Go button logic. Validates users name and password.
-(IBAction) goButtonPressed;

//Skip button logic. Skip to next step.
-(IBAction) skipButtonPressed;

//Register button logic. Navigate to registration view.
-(IBAction) registerButtonPressed;

//Done button logic. To be used in next versions.
-(IBAction) doneButtonPressed;

-(IBAction) openHelpWebsite;
//Log-in logic. Check the user name and password and log the user in.
//-(BOOL) checkId: (NSString*) acc andPassword: (NSString*) pw;


@end

