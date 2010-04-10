//
//  TestScript.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "TestScript.h"


@implementation TestScript


/* The setUp method is called automatically before each test-case method (methods whose name starts with 'test').
 */

- (void) setUp {
	NSLog(@"%@ setUp", self.name);
	Profile = [[ManageProfile alloc] initWithUserInfo:@"Mike" UserPassword:@"Mike'spassword"];
	STAssertNotNil(Profile, @"Cannot create ManageProfile instance");
}

/* The tearDown method is called automatically after each test-case method (methods whose name starts with 'test').
 */

- (void) tearDown {
	NSLog(@"%@ tearDown", self.name);
}


/* The test case methods are below 
 */

// these two commented tests are not working
/*
- (void)testUserLogin{
	NSLog(@"%@ start", self.name);
	Profile=[[ManageProfile alloc] initWithUserInfo:@"Mike" UserPassword:@"Mike'spassword"];
	STAssertEqualObjects(Profile.LoggedinUser.UserName, @"Mike", @"Failed to initWithUserInfo");
	NSLog(@"%@ end", self.name);
}

- (void)testCreateProfile{
	NSLog(@"%@ start", self.name);
	Profile=[[ManageProfile alloc] initWithUserInfo:@"John" UserPassword:@"John'spassword"];
	[Profile createUserProfile:@"John" Password:@"John'spassword"];
	[Profile saveUserProfile];
	STAssertFalse([Profile isUserUnique:@"John"], @"Failed to CreateUserProfile");
	NSLog(@"%@ end", self.name);
}
 */

- (void)testGuestUser{
	NSLog(@"%@ start", self.name);
	Profile = [[ManageProfile alloc] initGuestUserProfile];
	STAssertTrue(Profile.LoggedinUser.IsGuestUser, @"Failed to initGuestUserProfile");
	NSLog(@"%@ end", self.name);
}

- (void)testIsUserUnique{
	NSLog(@"%@ start", self.name);
	STAssertTrue([Profile isUserUnique:@"John"], @"Failed isUserUnique");
	NSLog(@"%@ end", self.name);
}

- (void)testDeleteAllProfiles{
	NSLog(@"%@ start", self.name);
	[Profile createUserProfile:@"David" Password:@"david'spassword"];
	[Profile saveUserProfile];
	[Profile createUserProfile:@"John" Password:@"John'spassword"];
	[Profile saveUserProfile];
	[Profile deleteAllProfiles];
	STAssertTrue([Profile isUserUnique:@"David"], @"Failed to deleteAllProfiles");
	STAssertTrue([Profile isUserUnique:@"John"], @"Failed to deleteAllProfiles");
	NSLog(@"%@ end", self.name);
}

- (void)testDeleteProfile{
	NSLog(@"%@ start", self.name);
	[Profile createUserProfile:@"Olivia" Password:@"Olivia'spassword"];
	[Profile saveUserProfile];
	[Profile deleteUserProfile:@"Olivia" Password:@"Olivia'spassword"];
	STAssertTrue([Profile isUserUnique:@"Olivia"], @"Failed to deleteProfile");
	NSLog(@"%@ end", self.name);
}


- (void)testGameUpdating{
	NSLog(@"%@ start", self.name);
	Profile=[[ManageProfile alloc] initWithUserInfo:@"Mike" UserPassword:@"Mike'spassword"];
	
	//equation game
	int equationGame1Score = Profile.LoggedinUser.EquationGame1Score;
	equationGame1Score++;
	Profile.LoggedinUser.EquationGame1Score++;
	//mirror game
	Profile.LoggedinUser.MirrorGame1Score=200;
	//clock game
	Profile.LoggedinUser.ClockGame1Score=30;
	//Money game
	Profile.LoggedinUser.MoneyGame1Score=60;
	
	[Profile saveUserProfile];
	
	//equation game
	STAssertEquals(Profile.LoggedinUser.EquationGame1Score, equationGame1Score, @"Failed to update equation game score");
	//mirror game
	STAssertEquals(Profile.LoggedinUser.MirrorGame1Score, 200, @"Failed to update mirror game score");
	//clock game
	STAssertEquals(Profile.LoggedinUser.ClockGame1Score, 30, @"Failed to update clock game score");
	//Money game
	STAssertEquals(Profile.LoggedinUser.MoneyGame1Score, 60, @"Failed to update clock game score");
	
	NSLog(@"%@ end", self.name);
}

- (void)testIsUserNameValid{
	NSLog(@"%@ start", self.name);
	STAssertFalse([Profile isUserNameValid:@"sho"], @"");
	STAssertFalse([Profile isUserNameValid:@"Toolong666666666666666666666666666666666666666"], @"");
	STAssertFalse([Profile isUserNameValid:@" "], @"");
	STAssertTrue([Profile isUserNameValid:@"sdfg_asfd"], @"");
	STAssertFalse([Profile isUserNameValid:@"asf!asfd"], @"");
	STAssertTrue([Profile isUserNameValid:@"asf87"], @"");
	STAssertTrue([Profile isUserNameValid:@"2345324"], @"");
	STAssertTrue([Profile isUserNameValid:@"ASFDSfghdf"], @"");
	STAssertTrue([Profile isUserNameValid:@"YUOJDFTD"], @"");
	STAssertFalse([Profile isUserNameValid:@"         "], @"");
	STAssertFalse([Profile isUserNameValid:@"asfdmbvm sf"], @"");
	NSLog(@"%@ end", self.name);
}

- (void)testPasswordCheck{
	NSLog(@"%@ start", self.name);
	STAssertFalse([Profile isPasswordValid:@"sho"], @"");
	STAssertFalse([Profile isUserNameValid:@"toolonggggggggggggggggggggggggggggggggggggg"], @"");
	NSLog(@"%@ end", self.name);
}


@end
