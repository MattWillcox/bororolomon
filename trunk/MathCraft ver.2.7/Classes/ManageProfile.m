//
//  ManageProfile.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "ManageProfile.h"

static ManageProfile *sharedUser = nil;

@implementation ManageProfile

@synthesize LoggedinUser;

-(ManageProfile *)initWithUserInfo:(NSString *) UserName UserPassword:(NSString *) Password{
	[super init];
	[self loadUserProfile:UserName Password:Password];
	return self;
}

-(ManageProfile *)initGuestUserProfile{
	//assigns a guest profile for the user
	[super init];
	LoggedinUser=[[UserProfile alloc] initGuestUser];
	return self;
}

-(BOOL)isUserUnique:(NSString *) UserName{
	
	BOOL ReturnValue=NO;
	
	NSDictionary *Profiles=[self loadProfiles];
	
	//Searches through the profiles array to see if the user name is already in use
	if ([Profiles objectForKey:UserName]==nil) {
		ReturnValue=YES;
	}
	else {
		ReturnValue=NO;
	}

	[Profiles release];
	
	return ReturnValue;
}

-(BOOL)loadUserProfile:(NSString *) UserName Password:(NSString *) UserPassword{
	
	BOOL ReturnValue=NO;
	
	NSDictionary *Profiles=[self loadProfiles];
	NSDictionary *User=[Profiles objectForKey:UserName];
	//Checks the user profile file for a user name that matches the one inputed. If the user name is found, then the password is checked.
	if (User!=nil) {
		LoggedinUser=[[UserProfile alloc] initWithUserInfo:User];
		if([LoggedinUser isPasswordCorrect:UserPassword]==NO){
			return NO;
		}
		//If both username and password is correct, then the user is signed in
		ReturnValue=YES;
	}
	else {
		LoggedinUser=LoggedinUser=[[UserProfile alloc] initGuestUser];
		ReturnValue=NO;
	}

	[LoggedinUser retain];
	[super init];
	[Profiles release];
	return ReturnValue;
}

-(BOOL)saveUserProfile{
	
	if (LoggedinUser.IsGuestUser==YES) {
		return NO;
	}
	//Adds the user the the profile file
	NSMutableDictionary * AllProfiles=[[self loadProfiles] mutableCopy] ;
	[AllProfiles setObject:[LoggedinUser getProfileRecord] forKey:LoggedinUser.UserName];
	return [self saveProfiles:AllProfiles];
}

-(BOOL)deleteUserProfile:(NSString *) UserName Password:(NSString *) UserPassword{
	if([LoggedinUser isPasswordCorrect:UserPassword]==NO){
		return NO;
	}
	//Removes the profile from the system
	NSMutableDictionary * AllProfiles=[[self loadProfiles] mutableCopy] ;
	[AllProfiles removeObjectForKey:UserName];
	[self saveProfiles:AllProfiles];
	[LoggedinUser release];
	LoggedinUser=[[UserProfile alloc]initGuestUser];
	return YES;
}

-(BOOL)isUserNameValid:(NSString *) UserName{
	//Checks if the username is valid
	return [self checkTextPattern:UserName TextPattern:USERNAMEREGEX];
}

-(BOOL)isPasswordValid:(NSString *) Password{
	//Checks if the password is valid
	return [self checkTextPattern:Password TextPattern:PASSWORDREGEX];
}

-(void)deleteAllProfiles{

	[self saveProfiles:[[NSDictionary alloc] init]];

}

- (NSString *) getFilePath{
	//Retrieves the file path for the profile file
	NSString *RootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
	NSString *FilePath = [RootPath stringByAppendingPathComponent:FILENAME];
	return FilePath;
}

- (NSDictionary *)loadProfiles{
	
	NSString *filePath=[self getFilePath];
	NSString *errorDesc = nil;
	NSPropertyListFormat format;
	
	//Calls upon the profile file and looks for the user information of the currently signed in username
	NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:filePath];
	NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization
										  propertyListFromData:plistXML
										  mutabilityOption:NSPropertyListMutableContainersAndLeaves
										  format:&format
										  errorDescription:&errorDesc];
	[temp retain];
	
	if (temp==nil) {
		temp=[[NSDictionary alloc] init];	
	}
	
	return temp;
}


- (BOOL)saveProfiles:(NSDictionary *) Profiles{
	NSString * Error;
	NSString *filePath=[self getFilePath];
	NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:Profiles
																   format:NSPropertyListXMLFormat_v1_0
														 errorDescription:&Error];
	//Overwrites existing user information with updated ones. 
	
	if(plistData) {
		[plistData writeToFile:filePath atomically:YES];
	}
	else {
		[Error release];
		return NO;
	}
	
	return YES;

}

-(BOOL)createUserProfile:(NSString *) UserName Password:(NSString *) UserPassword{
	//Verifies that the username and password entered are correct. If it is, the user is signed in.
	if([self isUserNameValid:UserName]==NO)
		return NO;
	
	if([self isPasswordValid:UserPassword]==NO)
		return NO;
	
	if([self isUserUnique:UserName]==NO)
		return NO;
	
	LoggedinUser.UserName=UserName;
	LoggedinUser.Password=UserPassword;
	LoggedinUser.IsGuestUser=NO;
	return YES;
}

-(BOOL)checkTextPattern:(NSString *) Text TextPattern:(NSString *)Pattern{

	NSPredicate *RegexTest=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",Pattern];
	
	return [RegexTest evaluateWithObject:Text]==YES;

}

+ (ManageProfile *)sharedManager {
	if(sharedUser == nil){
		sharedUser = [[super allocWithZone:NULL] init];
	}
	return sharedUser;
}
+ (id)allocWithZone:(NSZone *)zone {
	return [[self sharedManager] retain];
}
- (id)copyWithZone:(NSZone *)zone {
	return self;
}
- (id)retain {
	return self;
}
- (unsigned)retainCount {
	return NSUIntegerMax;
}
- (void)release {
	//do nothing
}
- (id)autorelease {
	return self;
}

-(void)dealloc{
	
	[LoggedinUser release];
	[super dealloc];

}

@end
