//
//  MathCraft_User.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-12.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MathCraft_User : NSObject {

	NSString *fullname;
	NSString *account;
	NSString *password;
	
	
}

-(MathCraft_User*) initWithAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;
-(void) setAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;
-(NSString*) get_password;
-(NSString*) get_account;
-(NSString*) get_fullname;

@end
