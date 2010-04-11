/*
 *  MobservServiceFramework.h
 *  MobservService
 *
 *  Created by Mikhail Asavkin on 1/17/10.
 *  Copyright 2010 Neyro. All rights reserved.
 *
 */

#define kMobservErrorDomain @"kMobservErrorDomain"
#define kMobservErrorUnknown 101
#define kMobservNotificationAccessTokenReceived @"MobservNotificationAccessTokenReceived"
#define kMobservNotificationAccessTokenReceiveFailed @"MobservNotificationAccessTokenReceiveFailed"

@interface NSString (OAURLEncodingAdditions)

- (NSString *)URLEncodedString;
- (NSString *)URLDecodedString;

@end

@interface OARequestParameter : NSObject {
@protected
    NSString *name;
    NSString *value;
}
@property(retain) NSString *name;
@property(retain) NSString *value;

+ (id)requestParameterWithName:(NSString *)aName value:(NSString *)aValue;
- (id)initWithName:(NSString *)aName value:(NSString *)aValue;
- (NSString *)URLEncodedName;
- (NSString *)URLEncodedValue;
- (NSString *)URLEncodedNameValuePair;

@end
@interface NSURL (OABaseAdditions)

- (NSString *)URLStringWithoutQuery;

@end
@interface NSMutableURLRequest (OAParameterAdditions)

- (NSArray *)parameters;
- (void)setParameters:(NSArray *)parameters;

@end
//MobservService
@class MobservOperation;
@protocol MobservOperationDelegate

-(void)operation:(MobservOperation*)operation didFailWithObject:(NSObject*)data;
-(void)operation:(MobservOperation*)operation didSuccededWithObject:(NSObject*)data;

@end
@class OAToken;
@class OAConsumer;
@class XMLTreeNode;
@interface MobservService : NSObject<MobservOperationDelegate> {
	NSNumber* appid;
	BOOL isTest;
@private
	OAToken *requestToken, *accessToken;
	OAConsumer *consumer;
	
}
@property (nonatomic,retain) NSNumber* appid;
@property (nonatomic) BOOL isTest;
+ (MobservService*) sharedInstance;
- (void) setConsumerKey: (NSString*) key andSecret: (NSString*) secret;
- (void) getAccessToken;
- (MobservOperation*) makeOAuthRequestWithParams: (NSDictionary*) dict
										  prefix: (NSString*) prefix 
						   succeededNotification: (NSString*) succeededNotification 
							  failedNotification: (NSString*) failedNotification;
-(void)operation:(MobservOperation*)operation failWithError:(XMLTreeNode*)errorNode;
@end
@class MobservOperation;
@class OAMutableURLRequest;
@interface MobservOperation : NSOperation {
	NSInteger  identifier;
	NSObject<MobservOperationDelegate>* delegate;
	OAMutableURLRequest *request;
	NSString* successNotificationName;
	NSString* failedNotificationName;
}
@property (nonatomic, retain) NSObject<MobservOperationDelegate>* delegate;
@property (assign)            NSInteger  identifier;
@property (nonatomic, retain) OAMutableURLRequest *request;
@property (nonatomic,retain) NSString* successNotificationName;
@property (nonatomic,retain) NSString* failedNotificationName;
+ (id) queueDataRequest: (OAMutableURLRequest*) aRequest 
		 withIdentifier:(NSInteger)anIdentifier delegate:(id)aTarget 
	 succesNotification:(NSString*)success failNotification:(NSString*)fail;

@end
@interface XMLTreeNode : NSObject {
	XMLTreeNode* parent;
	NSString* name;	// element name ("pages", "belongings", etc)
	NSMutableDictionary* attributes;
	NSMutableString* text;	// from foundCharacters()
	NSMutableDictionary* children;	// key is child's element name, value is NSMutableArray of tree nodes
}

@property (nonatomic,retain) XMLTreeNode* parent;
@property (nonatomic,retain) NSString* name;
@property (nonatomic,retain) NSMutableDictionary* attributes;
@property (nonatomic,retain) NSMutableString* text;
@property (nonatomic,retain) NSMutableDictionary* children;
@property (nonatomic,readonly) NSDictionary* childrenDict;
- (XMLTreeNode*) init;
- (void) dealloc;

// this will return an array of children matching the given element name
- (NSArray*) findChildren:(NSString*) name;

// this will return the child node with the given name 
// (will return the 1st occurrence if there are more)
- (XMLTreeNode*) findChild:(NSString*) name;

// this will return the nth child with the given name
- (XMLTreeNode*) findChild:(NSString*) name at:(NSInteger) position;

- (NSString*) description;

@end
