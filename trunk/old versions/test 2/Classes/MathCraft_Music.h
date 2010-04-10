//
//  MathCraft_Music.h
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-20.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//

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
