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
@synthesize  EquationGame1Score;
@synthesize  ClockGame1Score;
@synthesize  MoneyGame1Score;
@synthesize  MirrorGame1Score;
@synthesize  EquationGame2Score;
@synthesize  ClockGame2Score;
@synthesize  MoneyGame2Score;
@synthesize  MirrorGame2Score;

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
	
	EquationGame1Score=0;
	ClockGame1Score=0;
	MoneyGame1Score=0;
	MirrorGame1Score=0;
	EquationGame2Score=0;
	ClockGame2Score=0;
	MoneyGame2Score=0;
	MirrorGame2Score=0;
	
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
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame1Score] forKey:@"EquationGame1Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame1Score] forKey:@"ClockGame1Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame1Score] forKey:@"MoneyGame1Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame1Score] forKey:@"MirrorGame1Score"];
	
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame2Score] forKey:@"EquationGame2Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame2Score] forKey:@"ClockGame2Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame2Score] forKey:@"MoneyGame2Score"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame2Score] forKey:@"MirrorGame2Score"];
	
	
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
	
	self.EquationGame1Score=[[Record objectForKey:@"EquationGame1Score"] intValue];
	self.ClockGame1Score=[[Record objectForKey:@"ClockGame1Score"] intValue];
	self.MoneyGame1Score=[[Record objectForKey:@"MoneyGame1Score"] intValue];
	self.MirrorGame1Score=[[Record objectForKey:@"MirrorGame1Score"] intValue];
	self.EquationGame2Score=[[Record objectForKey:@"EquationGame2Score"] intValue];
	self.ClockGame2Score=[[Record objectForKey:@"ClockGame2Score"] intValue];
	self.MoneyGame2Score=[[Record objectForKey:@"MoneyGame2Score"] intValue];
	self.MirrorGame2Score=[[Record objectForKey:@"MirrorGame2Score"] intValue];
	
	
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
