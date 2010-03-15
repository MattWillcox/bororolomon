//
//  MathCraft_LoginAppDelegate.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright Simon Fraser University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MathCraft_LoginViewController;

@interface MathCraft_LoginAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MathCraft_LoginViewController *viewController;
	
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MathCraft_LoginViewController *viewController;

@end

