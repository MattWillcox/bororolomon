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
