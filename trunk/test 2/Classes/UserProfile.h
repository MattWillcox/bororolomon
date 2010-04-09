//
//  UserProfile.h
//  Test3
//
//  Created by Reza on 10-03-21.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UserProfile : NSObject {
	
	BOOL IsGuestUser;
	
	NSString *UserName;
	NSString *Password;
	
	//Highest Scores
	int EquationGame1Score;
	int EquationGame2Score;
	int ClockGame1Score;
	int ClockGame2Score;
	int MoneyGame1Score;
	int MoneyGame2Score;
	int MirrorGame1Score;
	int MirrorGame2Score;
	
	//Level of difficulty
	int EquationGameDifficulty;
	int ClockGameDifficulty;
	int MoneyGameDifficulty;
	int MirrorGameDifficulty;
	
	//User preferences
	BOOL Sound;
	

}

@property BOOL IsGuestUser;

@property (retain)NSString *UserName;
@property (retain)NSString *Password;

//Highest Scores
@property int EquationGame1Score;
@property int ClockGame1Score;
@property int MoneyGame1Score;
@property int MirrorGame1Score;
@property int EquationGame2Score;
@property int ClockGame2Score;
@property int MoneyGame2Score;
@property int MirrorGame2Score;

//Level of difficulty
@property int EquationGameDifficulty;
@property int ClockGameDifficulty;
@property int MoneyGameDifficulty;
@property int MirrorGameDifficulty;

//User preferences
@property BOOL Sound;

-(UserProfile *)initWithUserInfo:(NSDictionary *) UserInfo;
-(UserProfile *)initGuestUser;

-(NSDictionary *)getProfileRecord;
-(void)loadProfileFromRecord:(NSDictionary *) Record;
-(BOOL)isPasswordCorrect:(NSString *)UserPassword;

-(void)dealloc;

@end
