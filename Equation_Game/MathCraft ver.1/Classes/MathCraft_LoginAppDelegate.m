//
//  MathCraft_LoginAppDelegate.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */

#import "MathCraft_LoginAppDelegate.h"
#import "MathCraft_LoginViewController.h"

@implementation MathCraft_LoginAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
	sleep(2);
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	[[UIDevice currentDevice] setOrientation:UIInterfaceOrientationLandscapeRight];
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)dealloc {    
	[viewController release];
    [window release];
    [super dealloc];
}


@end
