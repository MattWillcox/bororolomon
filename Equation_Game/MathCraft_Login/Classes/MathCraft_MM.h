//
//  MathCraft_MM.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathCraft_Option.h"


@interface MathCraft_MM : UIViewController {

	
	MathCraft_Option *optionscreen;
	int sound;
	
}

@property (nonatomic, retain) UIButton *play_game;
@property (nonatomic, retain) UIButton *view_progress;
@property (nonatomic, retain) UIButton *view_leaderboard;
@property (nonatomic, retain) UIButton *option;

-(IBAction) option_Pressed;
-(IBAction) gamemenu_Pressed;
-(IBAction) leaderboard_Pressed;
-(IBAction) progress_Pressed;
-(int) get_sound_val;
-(void) set_sound_val: (int) i;

-(IBAction) open_bororolomonURL: (id) sender;

@end
