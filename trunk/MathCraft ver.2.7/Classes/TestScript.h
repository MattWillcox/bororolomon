//
//  TestScript.h
//  MathCraft_Login
//
//
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <Foundation/Foundation.h>

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>

// application_headers
#import "ManageProfile.h"


@interface TestScript : SenTestCase {
	ManageProfile *Profile;
}

-(void)dealloc;
@end
