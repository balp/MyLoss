//
//  PreferenceController.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-13.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import "PreferenceController.h"


@implementation PreferenceController
- (id) init {
	self = [super initWithWindowNibName:@"Preferences"];
	return self;
}
- (void)windowDidLoad {
	NSLog(@"Prererences nib loaded");
	NSWindow *window = [self window];
    [window setHidesOnDeactivate:NO];
    [window setExcludedFromWindowsMenu:YES];
}

- (IBAction)changedLength:(id)sender {
	double len = [length doubleValue];
	NSLog(@"changedLength: Now %lf", len);
	
    
}

- (IBAction)changedSex:(id)sender {
	NSLog(@"changedSex");
    
}
@end
