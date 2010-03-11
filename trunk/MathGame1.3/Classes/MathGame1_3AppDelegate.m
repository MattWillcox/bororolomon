//
//  MathGame1_3AppDelegate.m
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MathGame1_3AppDelegate.h"
#import "MathGame1_3ViewController.h"

@implementation MathGame1_3AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
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
