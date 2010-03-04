//
//  MathGame1AppDelegate.h
//  MathGame1
//
//  Created by Joanna So on 10年3月1日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MathGame1ViewController;

@interface MathGame1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MathGame1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MathGame1ViewController *viewController;

@end

