/*
 *  HighscoresServiceFramework.h
 *  MobservHighscoresService
 *
 *  Created by Andrey Kozlov on 2/2/10.
 *  Copyright 2010 HomeHP. All rights reserved.
 *
 */

#define kHighScoresNotificationScoreGetted @"HighScoresNotificationScoreGetted"
#define kHighScoresNotificationScoreGetFailed @"HighScoresNotificationScoreGetFailed"
#define kHighScoresNotificationScoreAdded @"HighScoresNotificationScoreAdded"
#define kHighScoresNotificationScoreAddFailed @"HighScoresNotificationScoreAddFailed"
#define kHighScoresErrorDomain @"kHighScoresErrorDomain"

@interface HighScore : NSObject {
@private
	NSString *subgameId;
	NSNumber *value;
	NSString *userName;
	NSNumber *index;
	NSNumber *limit;
	NSDictionary* customFields;
	NSString* countryCode;
	NSString* email;
	NSDate* dateTime;
	BOOL isOwn;
}
@property (nonatomic, retain) NSString *subgameId;
@property (nonatomic, retain) NSNumber *value;
@property (nonatomic, retain) NSString *userName;
@property (nonatomic, retain) NSNumber *index;
@property (nonatomic, retain) NSNumber *limit;
@property (nonatomic,readonly) NSDictionary* dictionary;
@property (nonatomic, retain) NSDictionary* customFields;
@property (nonatomic, retain) NSString* countryCode;
@property (nonatomic, retain) NSString* email;
@property (nonatomic, retain) NSDate* dateTime;
@property (nonatomic) BOOL isOwn;
@end


@interface HighScoresService : MobservService {
	NSInteger maxScoresCount;
}
- (MobservOperation*)addScore:(HighScore*)score;
- (MobservOperation*)getScoresForGame:(int)game scoreLimit:(int)limit;
- (MobservOperation*)getScoresForGame:(int)game scoreLimit:(int)limit limitAbove:(int)limitAbove limitBelow:(int)limitBelow;
@end


