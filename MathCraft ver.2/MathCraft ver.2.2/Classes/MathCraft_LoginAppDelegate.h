//
//  MathCraft_LoginAppDelegate.h
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */

#import <UIKit/UIKit.h>

@class MathCraft_LoginViewController;

@interface MathCraft_LoginAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MathCraft_LoginViewController *viewController;


}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MathCraft_LoginViewController *viewController;


@end

