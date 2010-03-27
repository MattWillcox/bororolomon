//
//  MathCraft_User.m
//  MathCraft_Login

/* Project Name:Bororolomon
 * Version: 1
 * Date: March 15, 2010
 * Group Number: 1
 * Course: CMPT 275
 * Copyright Simon Fraser University 2010. All rights reserved.
 */

#import "MathCraft_User.h"


@implementation MathCraft_User

-(void) setAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn {

	account = acc;
	password = pw;
	fullname = fn;
	
}


-(NSString*) getPassword {
	return password;
}

-(NSString*) getAccount {
	return account;
}

-(NSString*) getFullName {
	return fullname;
}



-(MathCraft_User*) initWithAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn {

	self = [super init];
	
	if (self) {
	
		[self setAccount:acc andPassword:pw andFullname:fn];
	}
	
	return self;
	
}



@end
