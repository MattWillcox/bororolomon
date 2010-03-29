//
//  ManageProfile.h
//  Test3
//
//  Created by Reza on 10-03-21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserProfile.h"

#define FILENAME @"Data.plist" 
#define PASSWORDREGEX @".{4,25}"
#define USERNAMEREGEX @"[A-Za-z0-9_]{4,25}"

@interface ManageProfile : NSObject {

	UserProfile *LoggedinUser;
}

@property (retain)UserProfile *LoggedinUser;

-(ManageProfile *)initWithUserInfo:(NSString *) UserName UserPassword:(NSString *) Password;
-(ManageProfile *)initGuestUserProfile;

-(BOOL)isUserUnique:(NSString *) UserName;
-(BOOL)loadUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;
-(BOOL)saveUserProfile;
-(BOOL)createUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;
-(BOOL)deleteUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;
-(BOOL)isUserNameValid:(NSString *) UserName;
-(BOOL)isPasswordValid:(NSString *) Password;
-(void)deleteAllProfiles;

//Internally called
-(NSString *) getFilePath;

-(NSDictionary *) loadProfiles;
-(BOOL)saveProfiles:(NSDictionary *) Profiles;
-(BOOL)checkTextPattern:(NSString *) Text TextPattern:(NSString *)Pattern;

+ (ManageProfile *)sharedManager;
-(void)dealloc;

@end

