//
//  UserProfile.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

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
	
	//Average Scores
	int EquationGame1Average;
	int EquationGame2Average;
	int ClockGame1Average;
	int ClockGame2Average;
	int MoneyGame1Average;
	int MoneyGame2Average;
	int MirrorGame1Average;
	int MirrorGame2Average;
	
	//GameCount
	
	int EquationGame1Played;
	int EquationGame2Played;
	int ClockGame1Played;
	int ClockGame2Played;
	int MoneyGame1Played;
	int MoneyGame2Played;
	int MirrorGame1Played;
	int MirrorGame2Played;
	
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

@property int EquationGame1Average;
@property int EquationGame2Average;
@property int ClockGame1Average;
@property int ClockGame2Average;
@property int MoneyGame1Average;
@property int MoneyGame2Average;
@property int MirrorGame1Average;
@property int MirrorGame2Average;

@property int EquationGame1Played;
@property int EquationGame2Played;
@property int ClockGame1Played;
@property int ClockGame2Played;
@property int MoneyGame1Played;
@property int MoneyGame2Played;
@property int MirrorGame1Played;
@property int MirrorGame2Played;

//User preferences
@property BOOL Sound;

-(UserProfile *)initWithUserInfo:(NSDictionary *) UserInfo;
-(UserProfile *)initGuestUser;

-(NSDictionary *)getProfileRecord;
-(void)loadProfileFromRecord:(NSDictionary *) Record;
-(BOOL)isPasswordCorrect:(NSString *)UserPassword;

-(void)dealloc;

@end
