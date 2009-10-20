//
//  AppController.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-20.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "AppController.h"
#import "PreferenceController.h"

@implementation AppController
+ (void)initialize
{
	NSMutableDictionary *defaultValues = [NSMutableDictionary dictionary];
	[defaultValues setObject:[NSNumber numberWithInt:maleGender] forKey:BALPGenderKey];
	[defaultValues setObject:[NSNumber numberWithInt:mediumFrame] forKey:BALPFrameKey];
	[defaultValues setObject:[NSNumber numberWithDouble:174.0] forKey:BALPLengthKey];

	
	[[NSUserDefaults standardUserDefaults] registerDefaults:defaultValues];
	NSLog(@"Registered defaults");
	
}

- (IBAction)showPreferencePanel:(id)sender
{
	if (!preferenceController) {
		preferenceController = [[PreferenceController alloc] init];
	}
	NSLog(@"showWindow: preferenceController");
	[preferenceController showWindow:self];
}

- (void)dealloc
{
	NSLog(@"AppControler dealloc");
	[preferenceController release];
	[super dealloc];
}


@end
