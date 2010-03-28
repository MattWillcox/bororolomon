//
//  TestScript.m
//  Test3
//
//  Created by Reza on 10-03-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TestScript.h"
#import "ManageProfile.h"


@implementation TestScript

-(void)StartTest{
	NSLog(@"test is started");
	
	ManageProfile *Profile=[[ManageProfile alloc] initWithUserInfo:@"Mike" UserPassword:@"Mike'spassword"];
	
	if(Profile.LoggedinUser.IsGuestUser==YES)
		NSLog(@"test failed 4");
	
	
	[Profile deleteAllProfiles];
	[Profile createUserProfile:@"Joe" Password:@"Joe'spassword"];
	[Profile saveUserProfile];
	[Profile createUserProfile:@"David" Password:@"david'spassword"];
	[Profile saveUserProfile];
	
	[Profile deleteAllProfiles];
	[Profile createUserProfile:@"Emily" Password:@"Emily'spassword"];
	[Profile saveUserProfile];
	[Profile createUserProfile:@"Olivia" Password:@"Olivia'spassword"];
	[Profile saveUserProfile];
	
	[Profile deleteUserProfile:@"Olivia" Password:@"Olivia'spassword"];
	
	[Profile createUserProfile:@"Mike" Password:@"Mike'spassword"];
	[Profile saveUserProfile];
	[Profile createUserProfile:@"Sam" Password:@"Sam'spassword"];
	[Profile saveUserProfile];
	
	if([Profile isUserUnique:@"Emily"]==YES)
		NSLog(@"test failed 3");
	
	if([Profile isUserUnique:@"John"]==NO)
		NSLog(@"test failed 2");
	
	
	
	if(Profile.LoggedinUser.IsGuestUser==YES)
		NSLog(@"test failed 0");
	
	
	
	ManageProfile *Profile1=[[ManageProfile alloc] initWithUserInfo:@"Mike" UserPassword:@"Mike'spassword"];
	
	Profile1.LoggedinUser.EquationGameScore++;
	Profile1.LoggedinUser.EquationGameDifficulty=20;
	Profile1.LoggedinUser.MirrorGameScore=200;
	Profile1.LoggedinUser.MirrorGameDifficulty=50;
	Profile1.LoggedinUser.ClockGameScore=30;
	Profile1.LoggedinUser.ClockGameDifficulty=40;
	Profile1.LoggedinUser.MoneyGameScore=60;
	Profile1.LoggedinUser.MoneyGameDifficulty=70;
	
	[Profile1 saveUserProfile];
	
	
	if([Profile1 isUserNameValid:@"sho"]==YES)
		NSLog(@"test failed 5");
	
	if([Profile1 isUserNameValid:@"Toolong666666666666666666666666666666666666666"]==YES)
		NSLog(@"test failed 7");
	
	if([Profile1 isUserNameValid:@" "]==YES)
		NSLog(@"test failed 8");
	
	if([Profile1 isUserNameValid:@"sdfg_asfd"]==NO)
		NSLog(@"test failed 9");
	
	if([Profile1 isUserNameValid:@"asf!asfd"]==YES)
		NSLog(@"test failed 10");
	
	if([Profile1 isUserNameValid:@"asf87"]==NO)
		NSLog(@"test failed 11");
	
	if([Profile1 isUserNameValid:@"2345324"]==NO)
		NSLog(@"test failed 12");
	
	if([Profile1 isUserNameValid:@"ASFDSfghdf"]==NO)
		NSLog(@"test failed 13");
	
	if([Profile1 isUserNameValid:@"YUOJDFTD"]==NO)
		NSLog(@"test failed 14");
	
	if([Profile1 isUserNameValid:@"         "]==YES)
		NSLog(@"test failed 15");
	
	if([Profile1 isUserNameValid:@"asfdmbvm sf"]==YES)
		NSLog(@"test failed 16");
	
	
	//Password check
	
	if([Profile1 isPasswordValid:@"sho"]==YES)
		NSLog(@"test failed 17");
	
	if([Profile1 isUserNameValid:@"toolonggggggggggggggggggggggggggggggggggggg"]==YES)
		NSLog(@"test failed 18");
	
	
	[Profile1 loadUserProfile:@"Sam" Password:@"Sam'spassword"];
	
	[Profile1 loadUserProfile:@"Mike" Password:@"Mike'spassword"];	
	
	ManageProfile *Profile2=[[ManageProfile alloc] initGuestUserProfile];
	
	
	
	
	
}
@end
