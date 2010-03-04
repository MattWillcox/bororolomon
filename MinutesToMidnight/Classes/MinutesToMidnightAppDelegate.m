//
//  MinutesToMidnightAppDelegate.m
//  MinutesToMidnight
//
//  Created by Joanna So on 10年3月3日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MinutesToMidnightAppDelegate.h"
#import "MinutesToMidnightViewController.h"

@implementation MinutesToMidnightAppDelegate

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
