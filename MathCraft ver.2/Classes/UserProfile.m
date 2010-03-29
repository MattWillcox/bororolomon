//
//  UserProfile.m
//  Test3
//
//  Created by Reza on 10-03-21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UserProfile.h"


@implementation UserProfile

@synthesize IsGuestUser;

@synthesize UserName;
@synthesize Password;

//Highest Scores
@synthesize  EquationGameScore;
@synthesize  ClockGameScore;
@synthesize  MoneyGameScore;
@synthesize  MirrorGameScore;

//Level of difficulty
@synthesize  EquationGameDifficulty;
@synthesize  ClockGameDifficulty;
@synthesize  MoneyGameDifficulty;
@synthesize  MirrorGameDifficulty;

//User preferences
@synthesize Sound;

-(UserProfile *)initWithUserInfo:(NSDictionary *) UserInfo{
	
	[super init];
	Sound = YES;
	[self loadProfileFromRecord:UserInfo];
	IsGuestUser=NO;

	return self;
}

-(UserProfile *)initGuestUser{
	
	[super init];
	
	IsGuestUser=YES;
	
	UserName=@"Guest";
	Password=@"";
	
	EquationGameScore=0;
	ClockGameScore=0;
	MoneyGameScore=0;
	MirrorGameScore=0;
	
	EquationGameDifficulty=0;
	ClockGameDifficulty=0;
	MoneyGameDifficulty=0;
	MirrorGameDifficulty=0;
	
	Sound = YES;
	return self;
		
}

-(NSDictionary *)getProfileRecord{

	NSMutableDictionary *UserRecord=[[NSMutableDictionary alloc] init];
	
	[UserRecord setObject:self.UserName forKey:@"UserName"];
	[UserRecord setObject:self.Password forKey:@"Password"];
	//Highest Scores
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGameScore] forKey:@"EquationGameScore"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGameScore] forKey:@"ClockGameScore"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGameScore] forKey:@"MoneyGameScore"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGameScore] forKey:@"MirrorGameScore"];
	
	//Level of difficulty
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGameDifficulty] forKey:@"EquationGameDifficulty"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGameDifficulty] forKey:@"ClockGameDifficulty"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGameDifficulty] forKey:@"MoneyGameDifficulty"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGameDifficulty] forKey:@"MirrorGameDifficulty"];
	
	//User preferences
	
	[UserRecord setObject:[NSNumber numberWithBool:Sound]  forKey:@"Sound"];
	
	return UserRecord;
}

-(void)loadProfileFromRecord:(NSDictionary *) Record{

	self.UserName =[Record objectForKey:@"UserName"];	
	self.Password =[Record objectForKey:@"Password"];
	
	self.EquationGameScore=[[Record objectForKey:@"EquationGameScore"] intValue];
	self.ClockGameScore=[[Record objectForKey:@"ClockGameScore"] intValue];
	self.MoneyGameScore=[[Record objectForKey:@"MoneyGameScore"] intValue];
	self.MirrorGameScore=[[Record objectForKey:@"MirrorGameScore"] intValue];
	
	self.EquationGameDifficulty=[[Record objectForKey:@"EquationGameDifficulty"] intValue];
	self.ClockGameDifficulty=[[Record objectForKey:@"ClockGameDifficulty"] intValue];
	self.MoneyGameDifficulty=[[Record objectForKey:@"MoneyGameDifficulty"] intValue];
	self.MirrorGameDifficulty=[[Record objectForKey:@"MirrorGameDifficulty"] intValue];
	
	self.Sound=[[Record objectForKey:@"Sound"] boolValue];
}

-(BOOL)isPasswordCorrect:(NSString *)UserPassword{
	return [UserPassword isEqualToString:self.Password];
}

-(void)dealloc{

	[UserName release];
	[Password release];
	[super dealloc];

}


@end
