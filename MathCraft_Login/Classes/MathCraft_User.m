//
//  MathCraft_User.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-12.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import "MathCraft_User.h"


@implementation MathCraft_User

-(void) setAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn {

	account = acc;
	password = pw;
	fullname = fn;
	
}


-(NSString*) get_password {
	return password;
}

-(NSString*) get_account {
	return account;
}

-(NSString*) get_fullname {
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
