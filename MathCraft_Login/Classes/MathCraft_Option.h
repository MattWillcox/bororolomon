//
//  MathCraft_Option.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-10.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MathCraft_Option : UIViewController {
	
	IBOutlet UISwitch *switch1;
	IBOutlet UIButton *back;
	

	int sound;
	
	
}

@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UIButton *back;


-(IBAction) back_Pressed;
-(IBAction) switch_Enabled;
-(int) get_sound_val;
-(void) set_sound_val: (int) i;


@end
