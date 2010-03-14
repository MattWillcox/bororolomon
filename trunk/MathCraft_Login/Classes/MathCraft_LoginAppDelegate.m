//
//  MathCraft_LoginAppDelegate.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-05.
//  Copyright Simon Fraser University 2010. All rights reserved.
//

#import "MathCraft_LoginAppDelegate.h"
#import "MathCraft_LoginViewController.h"

@implementation MathCraft_LoginAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
	sleep(0);
	
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	[[UIDevice currentDevice] setOrientation:UIInterfaceOrientationLandscapeRight];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
