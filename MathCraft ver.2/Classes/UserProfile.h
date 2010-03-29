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
	int EquationGameScore;
	int ClockGameScore;
	int MoneyGameScore;
	int MirrorGameScore;
	
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
@property int EquationGameScore;
@property int ClockGameScore;
@property int MoneyGameScore;
@property int MirrorGameScore;

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
