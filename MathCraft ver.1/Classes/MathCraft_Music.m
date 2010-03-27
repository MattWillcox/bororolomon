//
//  MathCraft_Music.m
//  MathCraft_Login
//
//  Created by Ray Sung on 10-03-20.
//  Copyright 2010 Simon Fraser University. All rights reserved.
//


#import "MathCraft_Music.h"

static MathCraft_Music *sharedUser = nil;

@implementation MathCraft_Music

@synthesize sound;

-(MathCraft_Music*) init {
	self = [super init];
	if (self) {
	
		[self changeTrack:0];
		sound = [NSNumber numberWithInt:1];
	}
	return self;
	
}



-(void) changeTrack:(int) num {

	if (num == 0) {
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"background" ofType:@"mp3"];
		if(theAudio) [theAudio release];
		theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
		theAudio.numberOfLoops = -1;
		theAudio.delegate = self;

	}
	
	else if (num == 1) {
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"eq" ofType:@"mp3"];
		if(theAudio) [theAudio release];
		theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
		theAudio.numberOfLoops = -1;
		theAudio.delegate = self;
		
	}
	
	else if (num == 2) {
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"time" ofType:@"mp3"];
		if(theAudio) [theAudio release];
		theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
		theAudio.numberOfLoops = -1;
		theAudio.delegate = self;
	}
	
	else if (num == 3) {
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"money" ofType:@"mp3"];
		if(theAudio) [theAudio release];
		theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
		theAudio.numberOfLoops = -1;
		theAudio.delegate = self;
	}
	
	else if (num == 4) {
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"pattern" ofType:@"mp3"];
		if(theAudio) [theAudio release];
		theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
		theAudio.numberOfLoops = -1;
		theAudio.delegate = self;
	}
	
	else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Music file does NOT exist!" 
														message:@"" 
													   delegate:nil 
											  cancelButtonTitle:@"OK" 
											  otherButtonTitles:nil];
		[alert show];
		[alert release];
	}



}

-(void) play {
	if ([sound intValue] == 1) {
		[theAudio play];
	}

}
-(void) stop {

	[theAudio stop];
}



+ (MathCraft_Music *)sharedManager {
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


@end
