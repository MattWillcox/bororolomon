//
//  MathCraft_User.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */


#import <Foundation/Foundation.h>

//User object. To be completed.
@interface MathCraft_User : NSObject {

	NSString *fullname;
	NSString *account;
	NSString *password;
	
	
}

//Class initializer
-(MathCraft_User*) initWithAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;
-(void) setAccount: (NSString*) acc andPassword: (NSString*) pw andFullname: (NSString*) fn;

//Get password property. To be replace with objective-c standard property.
-(NSString*) getPassword;

//Get account property. To be replace with objective-c standard property.
-(NSString*) getAccount;

//Get full name property. To be replace with objective-c standard property.
-(NSString*) getFullName;

@end
