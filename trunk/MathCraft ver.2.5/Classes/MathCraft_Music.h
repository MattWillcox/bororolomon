//
//  MathCraft_Music.h
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>

@interface MathCraft_Music : NSObject {

	AVAudioPlayer* theAudio;
	NSNumber *sound;
}

@property (nonatomic, retain) NSNumber *sound;

-(MathCraft_Music*) init;
-(void) changeTrack:(int) num;
-(void) play;
-(void) stop;
-(BOOL) isOn;

+ (MathCraft_Music *)sharedManager;

@end
