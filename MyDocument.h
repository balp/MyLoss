//
//  MyDocument.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//


#import <Cocoa/Cocoa.h>


@interface MyDocument : NSDocument {
    IBOutlet NSTextField *consumedEnergy;
    IBOutlet NSDatePicker *date;
    IBOutlet NSLevelIndicator *energyBar;
    IBOutlet NSTextField *energyBudget;
    IBOutlet NSTextField *exersiceEnergy;
    IBOutlet NSTextField *message;
    IBOutlet NSTextField *netEnergy;
	IBOutlet NSTextField *weight;
	
	NSMutableDictionary *days;

}
- (IBAction)addExercise:(id)sender;
- (IBAction)addFood:(id)sender;
- (IBAction)gotoToday:(id)sender;
- (IBAction)dateChanged:(id)sender;
- (IBAction)weightChanged:(id)sender;

- (void)viewDate:(NSDate *)newDate;

@end
