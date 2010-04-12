//
//  UserProfile.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

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
@synthesize  EquationGame1Average;
@synthesize  ClockGame1Average;
@synthesize  MoneyGame1Average;
@synthesize  MirrorGame1Average;
@synthesize  EquationGame2Average;
@synthesize  ClockGame2Average;
@synthesize  MoneyGame2Average;
@synthesize  MirrorGame2Average;
@synthesize  EquationGame1Played;
@synthesize  ClockGame1Played;
@synthesize  MoneyGame1Played;
@synthesize  MirrorGame1Played;
@synthesize  EquationGame2Played;
@synthesize  ClockGame2Played;
@synthesize  MoneyGame2Played;
@synthesize  MirrorGame2Played;
@synthesize  totalScore;

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
	EquationGame1Average=0;
	ClockGame1Average=0;
	MoneyGame1Average=0;
	MirrorGame1Average=0;
	EquationGame2Average=0;
	ClockGame2Average=0;
	MoneyGame2Average=0.0;
	MirrorGame2Average=0;	
	EquationGame1Played=0;
	ClockGame1Played=0;
	MoneyGame1Played=0;
	MirrorGame1Played=0;
	EquationGame2Played=0;
	ClockGame2Played=0;
	MoneyGame2Played=0;
	MirrorGame2Played=0;
	
	totalScore = 0;
	
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
	
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame1Average] forKey:@"EquationGame1Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame1Average] forKey:@"ClockGame1Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame1Average] forKey:@"MoneyGame1Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame1Average] forKey:@"MirrorGame1Average"];
	
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame2Average] forKey:@"EquationGame2Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame2Average] forKey:@"ClockGame2Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame2Average] forKey:@"MoneyGame2Average"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame2Average] forKey:@"MirrorGame2Average"];
	
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame1Played] forKey:@"EquationGame1Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame1Played] forKey:@"ClockGame1Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame1Played] forKey:@"MoneyGame1Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame1Played] forKey:@"MirrorGame1Played"];
	
	[UserRecord setObject:[NSNumber numberWithInt:self.EquationGame2Played] forKey:@"EquationGame2Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.ClockGame2Played] forKey:@"ClockGame2Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MoneyGame2Played] forKey:@"MoneyGame2Played"];
	[UserRecord setObject:[NSNumber numberWithInt:self.MirrorGame2Played] forKey:@"MirrorGame2Played"];
	
		
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
	self.EquationGame1Average=[[Record objectForKey:@"EquationGame1Average"] intValue];
	self.ClockGame1Average=[[Record objectForKey:@"ClockGame1Average"] intValue];
	self.MoneyGame1Average=[[Record objectForKey:@"MoneyGame1Average"] intValue];
	self.MirrorGame1Average=[[Record objectForKey:@"MirrorGame1Average"] intValue];
	self.EquationGame2Average=[[Record objectForKey:@"EquationGame2Average"] intValue];
	self.ClockGame2Average=[[Record objectForKey:@"ClockGame2Average"] intValue];
	self.MoneyGame2Average=[[Record objectForKey:@"MoneyGame2Average"] intValue];
	self.MirrorGame2Average=[[Record objectForKey:@"MirrorGame2Average"] intValue];	
	self.EquationGame1Played=[[Record objectForKey:@"EquationGame1Played"] intValue];
	self.ClockGame1Played=[[Record objectForKey:@"ClockGame1Played"] intValue];
	self.MoneyGame1Played=[[Record objectForKey:@"MoneyGame1Played"] intValue];
	self.MirrorGame1Played=[[Record objectForKey:@"MirrorGame1Played"] intValue];
	self.EquationGame2Played=[[Record objectForKey:@"EquationGame2Played"] intValue];
	self.ClockGame2Played=[[Record objectForKey:@"ClockGame2Played"] intValue];
	self.MoneyGame2Played=[[Record objectForKey:@"MoneyGame2Played"] intValue];
	self.MirrorGame2Played=[[Record objectForKey:@"MirrorGame2Played"] intValue];
	
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
