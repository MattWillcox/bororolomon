//
//  MathCraft_MainMenu.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-15.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MathCraft_Option.h"


@interface MathCraft_MainMenu : UIViewController {

	MathCraft_Option *optionscreen;
	int sound;
	
}


//Option button logic. Navigates to options view.
-(IBAction) optionButtonPressed;

//Game menu button logic. Navigates to game selection view.
-(IBAction) gameMenuButtonPressed;

//Leaderboard button logic. Navigates to leaderboard view.
-(IBAction) leaderboardButtonPressed;

//Progress button logic. Navigates to progress view.
-(IBAction) progressButtonPressed;

-(int) getSoundValue;
-(void) setSoundValue: (int) i;

//Logo hyperlink. Navigate to project web site.
-(IBAction) openProjectWebsite: (id) sender;



@end
