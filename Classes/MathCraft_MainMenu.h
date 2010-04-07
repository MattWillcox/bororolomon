//
//  MathCraft_MainMenu.h
//  MathCraft_Login
//
/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
 */

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
