//
//  MyLossApplication.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-11.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TodayHandler;

@interface MyLossApplication : NSObject {
	TodayHandler *MyTodayHandler;
	
}
+ (MyLossApplication *)sharedInstance;


- (TodayHandler *)getTodayHandler;
- (void) setTodayHandler: (TodayHandler *) inst;
@end
