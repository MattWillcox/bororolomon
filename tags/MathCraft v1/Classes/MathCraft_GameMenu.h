//
//  MathCraft_GameMenu.h
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 * All coding done under the Apple Devoloper Coding Guidelines for Cocoa
 */


#import <UIKit/UIKit.h>
#import "Equation_GameViewController.h"

//Game menu view logic. Using this view user selects the game they want to play.
@interface MathCraft_GameMenu : UIViewController {


	
}

//Back button logic. Navigate one step back.
-(IBAction) backButtonPressed;

//Equation game button logic. Select equation game to play.
-(IBAction) equationGameButtonPressed;

//Clock game button logic. Select clock game to play.
-(IBAction) clockGameButtonPressed;

//Money game button logic. Select money game to play.
-(IBAction) moneyGameButtonPressed;

//Mirror game button logic. Select mirror game to play.
-(IBAction) mirrorGameButtonPressed;


@end
