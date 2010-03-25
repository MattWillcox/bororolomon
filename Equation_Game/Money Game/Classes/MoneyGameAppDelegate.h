//
//  MoneyGameAppDelegate.h
//  MoneyGame
//
//  Created by Joanna So on 10年3月20日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MoneyGameViewController;

@interface MoneyGameAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MoneyGameViewController *viewController;
	NSTimer *timer;
}
-(void)onTimer;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MoneyGameViewController *viewController;

@end

