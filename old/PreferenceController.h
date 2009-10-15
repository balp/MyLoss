//
//  PreferenceController.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-13.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PreferenceController : NSWindowController {
    IBOutlet NSTextField *length;
    IBOutlet NSPopUpButton *sex;
}
- (IBAction)changedLength:(id)sender;
- (IBAction)changedSex:(id)sender;
@end
