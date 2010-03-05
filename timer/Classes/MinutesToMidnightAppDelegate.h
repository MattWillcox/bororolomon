//
//  MinutesToMidnightAppDelegate.h
//  MinutesToMidnight
//
//  Created by Joanna So on 10年3月3日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MinutesToMidnightViewController;

@interface MinutesToMidnightAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MinutesToMidnightViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MinutesToMidnightViewController *viewController;

@end

