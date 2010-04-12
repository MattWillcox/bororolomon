//
//  MathCraft_LoginAppDelegate.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */


#import "MathCraft_LoginAppDelegate.h"
#import "MathCraft_LoginViewController.h"


@implementation MathCraft_LoginAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {   
	sleep(1);
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];	
	
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)dealloc {    

	[viewController release];
    [window release];
    [super dealloc];
}


@end
