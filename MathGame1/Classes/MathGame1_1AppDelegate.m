//
//  MathGame1_1AppDelegate.m
//  MathGame1.1
//
//  Created by Joanna So on 10年3月3日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MathGame1_1AppDelegate.h"
#import "MathGame1_1ViewController.h"

@implementation MathGame1_1AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
