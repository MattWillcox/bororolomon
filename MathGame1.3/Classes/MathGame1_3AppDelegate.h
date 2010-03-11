//
//  MathGame1_3AppDelegate.h
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MathGame1_3ViewController;

@interface MathGame1_3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MathGame1_3ViewController *viewController;
}


@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MathGame1_3ViewController *viewController;

@end

