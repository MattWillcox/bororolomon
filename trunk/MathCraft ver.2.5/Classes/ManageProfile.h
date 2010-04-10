//
//  ManageProfile.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <Foundation/Foundation.h>
#import "UserProfile.h"

#define FILENAME @"Data.plist" 
#define PASSWORDREGEX @".{4,25}"
#define USERNAMEREGEX @"[A-Za-z0-9_]{4,25}"

@interface ManageProfile : NSObject {

	UserProfile *LoggedinUser;
}

@property (retain)UserProfile *LoggedinUser;

// class initializers
-(ManageProfile *)initWithUserInfo:(NSString *) UserName UserPassword:(NSString *) Password;
-(ManageProfile *)initGuestUserProfile;

// Checks to see if this 'UserName' is already taken
-(BOOL)isUserUnique:(NSString *) UserName;

// Loads the specified profile to 'LoggedinUser'
-(BOOL)loadUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;

// Saves user information from 'LoggedinUser'
-(BOOL)saveUserProfile;

// Creates a user with the specified UserName and UserPassword
-(BOOL)createUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;

// Removes the specified users information
-(BOOL)deleteUserProfile:(NSString *) UserName Password:(NSString *) UserPassword;

// Checks to see if the user name is valid
-(BOOL)isUserNameValid:(NSString *) UserName;

// Checks to see if the password is valid
-(BOOL)isPasswordValid:(NSString *) Password;

// Remove all saved profiles
-(void)deleteAllProfiles;

//Internally called
-(NSString *) getFilePath;

-(NSDictionary *) loadProfiles;
-(BOOL)saveProfiles:(NSDictionary *) Profiles;
-(BOOL)checkTextPattern:(NSString *) Text TextPattern:(NSString *)Pattern;

+ (ManageProfile *)sharedManager;
-(void)dealloc;

@end

