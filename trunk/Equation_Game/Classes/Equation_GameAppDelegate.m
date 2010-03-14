//
//  Equation_GameAppDelegate.m
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Equation_GameAppDelegate.h"
#import "Equation_GameViewController.h"

@implementation Equation_GameAppDelegate

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
