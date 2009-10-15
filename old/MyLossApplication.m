//
//  MyLossApplication.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-11.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import "MyLossApplication.h"
#import "TodayHandler.h"
static MyLossApplication *sharedMyLossApplicationDelegate = nil;

@implementation MyLossApplication

- (TodayHandler *)getTodayHandler {
	return MyTodayHandler;
}

- (void) setTodayHandler: (TodayHandler *) inst {
	[MyTodayHandler release];
	MyTodayHandler = [inst retain];
	[MyTodayHandler reset:self];
}


+ (MyLossApplication *)sharedInstance {
	@synchronized(self) {
		if (sharedMyLossApplicationDelegate == nil) {
			[[self alloc] init]; // assignment not done here
		}
	}
	return sharedMyLossApplicationDelegate;
}

+ (id)allocWithZone:(NSZone *)zone {
	@synchronized(self) {
		if (sharedMyLossApplicationDelegate == nil) {
			sharedMyLossApplicationDelegate = [super allocWithZone:zone];
			// assignment and return on first allocation
			return sharedMyLossApplicationDelegate;
		}
	}
	// on subsequent allocation attempts return nil
	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}

- (id)retain {
	return self;
}

- (NSUInteger)retainCount {
	return UINT_MAX;  // denotes an object that cannot be released
}

- (void)release {
	//do nothing
}

- (id)autorelease {
	return self;
}

@end
