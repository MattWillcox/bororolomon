//
//  MathCraft_LoginAppDelegate.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
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

