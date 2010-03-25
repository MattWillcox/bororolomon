//
//  MoneyGameAppDelegate.m
//  MoneyGame
//
//  Created by Joanna So on 10年3月20日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MoneyGameAppDelegate.h"
#import "MoneyGameViewController.h"

@implementation MoneyGameAppDelegate

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
