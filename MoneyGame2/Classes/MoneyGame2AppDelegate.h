//
//  MoneyGame2AppDelegate.h
//  MoneyGame2
//
//  Created by Joanna So on 10年4月4日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MoneyGame2ViewController;

@interface MoneyGame2AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MoneyGame2ViewController *viewController;
	NSTimer *timer;
}
-(void)onTimer;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MoneyGame2ViewController *viewController;

@end

