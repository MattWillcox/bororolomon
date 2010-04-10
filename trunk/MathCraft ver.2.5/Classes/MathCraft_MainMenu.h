//
//  MathCraft_MainMenu.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <UIKit/UIKit.h>



@interface MathCraft_MainMenu : UIViewController {

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



//Logo hyperlink. Navigate to project web site.
-(IBAction) openProjectWebsite: (id) sender;



@end
