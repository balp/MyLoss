//
//  PreferenceController.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-18.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "PreferenceController.h"

NSString *BALPGenderKey = @"gender";
NSString *BALPFrameKey = @"frame";
NSString *BALPLengthKey = @"length";

@implementation PreferenceController
- (id)init
{
	self = [super initWithWindowNibName:@"Preferences"];
	NSLog(@"prefs init");
	return self;
}

- (void)windowDidLoad
{
	NSLog(@"prefs windowDidLoad");

}

- (IBAction)changeGender:(id)sender {
	gender_t g = [self gender];
	[[NSUserDefaults standardUserDefaults] setInteger:g forKey:BALPGenderKey];
	[[NSNotificationCenter defaultCenter] postNotificationName:@"prefsChanged" object:self];
}

- (IBAction)changeLength:(id)sender {
	[[NSUserDefaults standardUserDefaults] setDouble:[length doubleValue] forKey:BALPLengthKey];
	[[NSNotificationCenter defaultCenter] postNotificationName:@"prefsChanged" object:self];
}

- (IBAction)changeFrame:(id)sender {
	frame_t f = [self frame];
	[[NSUserDefaults standardUserDefaults] setInteger:f forKey:BALPFrameKey];
	[[NSNotificationCenter defaultCenter] postNotificationName:@"prefsChanged" object:self];
}

- (gender_t)gender {
	NSString *tmp = [gender titleOfSelectedItem];
	if ([tmp isEqualToString:@"Male"] ) {
		return maleGender;
	}
	return femaleGender;
}

- (frame_t)frame {
	NSString *tmp = [frame titleOfSelectedItem];
	if ([tmp isEqualToString:@"Small"] ) {
		return smallFrame;
	}
	if ([tmp isEqualToString:@"Medium"] ) {
		return mediumFrame;
	}
	return largeFrame;
}

- (double)length {
	return [length doubleValue];
}

- (void)dealloc
{
	NSLog(@"PreferenceController dealloc");
	[super dealloc];
}

@end
