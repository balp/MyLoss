//
//  AppController.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-20.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class PreferenceController;


@interface AppController : NSObject {
	PreferenceController *preferenceController;
}

- (IBAction)showPreferencePanel:(id)sender;

@end
