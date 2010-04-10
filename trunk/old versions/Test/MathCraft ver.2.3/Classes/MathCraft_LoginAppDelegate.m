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
    
	sleep(1);
	NSString *response = [self submitHighScore:@"Matt" score:199.5 url:@"http://twitter.com/"];
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];	
	
}

-(NSString *) submitHighScore:(NSString *)name score:(float) score url:(NSString *) url {
	NSString *appKey = @"8449e1f2b3a509809d123f5e1af08eac";
	NSString *urlString = [NSString stringWithFormat:@"http://iphonelb.com/ws?app_key=%@&name=%@&score=%f&url=%@",appKey,
						   name,score,url];
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString]];
	NSData	     *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
	return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (void)dealloc {    

	[viewController release];
    [window release];
    [super dealloc];
}


@end
