//
//  MathCraft_Register.h
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */


#import <UIKit/UIKit.h>
#import "ManageProfile.h"
#import "MathCraft_MainMenu.h"

//Registration view logic. User registeration is done through this code.
@interface MathCraft_Register : UIViewController {

	IBOutlet UIButton *done;
	IBOutlet UIButton *cancel;
	IBOutlet UITextField *account;
	IBOutlet UITextField *password;
	IBOutlet UITextField *password_confirm;
	IBOutlet UITextField *fullname;

	
}

@property (nonatomic, retain) UIButton *done;
@property (nonatomic, retain) UIButton *cancel;
@property (nonatomic, retain) UITextField *account;
@property (nonatomic, retain) UITextField *password;
@property (nonatomic, retain) UITextField *password_confirm;
@property (nonatomic, retain) UITextField *fullname;

//Save the new account to file. To be developed and completed in next version.
-(void) saveNewAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;

//Validate user's information and create a new account for her/him.
-(IBAction) doneButtonPressed;

//Cancel button logic. Registeration cancelled.
-(IBAction) cancelButtonPressed;

-(IBAction) done_key;//To be renamed

@end
