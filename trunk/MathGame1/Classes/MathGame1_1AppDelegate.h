//
//  MathGame1_1AppDelegate.h
//  MathGame1.1
//
//  Created by Joanna So on 10年3月3日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MathGame1_1ViewController;

@interface MathGame1_1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MathGame1_1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MathGame1_1ViewController *viewController;

@end

