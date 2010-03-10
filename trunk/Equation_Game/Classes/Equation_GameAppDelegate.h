//
//  Equation_GameAppDelegate.h
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Equation_GameViewController;

@interface Equation_GameAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Equation_GameViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Equation_GameViewController *viewController;

@end

