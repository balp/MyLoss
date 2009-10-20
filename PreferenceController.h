//
//  PreferenceController.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-18.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString *BALPGenderKey;
extern NSString *BALPFrameKey;
extern NSString *BALPLengthKey;

typedef enum {
	maleGender,
	femaleGender,
} gender_t;

typedef enum {
	smallFrame,
	mediumFrame,
	largeFrame
} frame_t;

@interface PreferenceController : NSWindowController {
	IBOutlet NSPopUpButton *gender;
	IBOutlet NSTextField *length;
	IBOutlet NSPopUpButton *frame;
}
- (IBAction)changeGender:(id)sender;
- (IBAction)changeLength:(id)sender;
- (IBAction)changeFrame:(id)sender;

- (gender_t)gender;
- (frame_t)frame;
- (double)length;
@end
