//
//  MyLossAppDelegate.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-10.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import "MyLossAppDelegate.h"
#import "MyLossApplication.h"
#import "TodayHandler.h"

@implementation MyLossAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	[[[MyLossApplication sharedInstance] getTodayHandler] reset:self];
}

@end
