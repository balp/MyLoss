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
#import "PreferenceController.h"

@implementation MyLossAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	[[[MyLossApplication sharedInstance] getTodayHandler] reset:self];
}

-(IBAction)showPreferencePanel: (id)sender
{
	NSLog(@"showPreferencePanel: %@", preferenceController);
	if (!preferenceController) {
		preferenceController = [[PreferenceController alloc] init];
	}
	[preferenceController showWindow:self];
}

- (void)dealloc
{
	[preferenceController release];
	[super dealloc];
}

@end
