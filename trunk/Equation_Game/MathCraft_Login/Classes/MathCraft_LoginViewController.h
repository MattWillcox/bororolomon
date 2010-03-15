//
//  MathCraft_LoginViewController.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright Simon Fraser University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathCraft_Register.h"
#import "MathCraft_User.h"

@interface MathCraft_LoginViewController : UIViewController {

	IBOutlet UIButton *go;
	IBOutlet UIButton *reg;
	IBOutlet UIButton *skip;
	IBOutlet UITextField *account;
	IBOutlet UITextField *password;
	MathCraft_Register *regscreen;
	int sound;
}

@property (nonatomic, retain) UIButton *go;
@property (nonatomic, retain) UIButton *reg;
@property (nonatomic, retain) UIButton *skip;
@property (nonatomic, retain) UITextField *account;
@property (nonatomic, retain) UITextField *password;

-(IBAction) go_Pressed;
-(IBAction) skip_Pressed;
-(IBAction) reg_Pressed;
-(IBAction) done_key;
-(int) get_sound_val;
-(void) set_sound_val: (int) i;
-(BOOL) check_id: (NSString*) acc andPassword: (NSString*) pw;

@end

