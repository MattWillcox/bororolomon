//
//  MoneyGame2AppDelegate.m
//  MoneyGame2
//
//  Created by Joanna So on 10年4月4日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MoneyGame2AppDelegate.h"
#import "MoneyGame2ViewController.h"

@implementation MoneyGame2AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];	
    [window addSubview:viewController.view];
	[window makeKeyAndVisible];
}


- (void)onTimer {
	[viewController updateLabel];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[timer invalidate];
}

- (void)dealloc {
	[timer release];
    [viewController release];
    [window release];
    [super dealloc];
}


@end
