//
//  MathCraft_Register.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>



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


-(void) save_newAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;
-(IBAction) done_Pressed;
-(IBAction) cancel_Pressed;
-(IBAction) done_key;

@end
