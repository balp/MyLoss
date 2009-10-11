//
//  TodayHandler.m
//
//  Created by Anders Arnholm on 2009-10-11.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import "TodayHandler.h"
#import "MyLossApplication.h"

@implementation TodayHandler
- (id) init {
	[super init];
	[[MyLossApplication sharedInstance] setTodayHandler:self];

	return self;
}

- (IBAction)addExercise:(NSButton *)sender {
    NSLog(@"addExercise");
}

- (IBAction)addFood:(NSButton *)sender {
    NSLog(@"addFood");
}

- (IBAction)gotoToday:(NSButton *)sender {
	[DatePicker setDateValue: [NSDate date]];
    
}

- (IBAction)dateChanged:(NSDatePicker *)sender {
	NSLog(@"dateChanged");

}

- (void)reset: (NSObject *)sender {
	[DatePicker setDateValue: [NSDate date]];
    [LevelIndicator setIntValue: 0];
    [DailyBudget setIntValue: 0];
    [ExerciseCalories setIntValue: 0];
    [FoodCaloriesUsed setIntValue: 0];
    [NetCalories setIntValue: 0];
    [InfoText setStringValue: @"No data yet for this day."];	
}

// -------------------------------------------------------------------------------
//    textDidEndEditing:notification
//
//    The user finished editing the time interval (in seconds).
//
//    This controller is a delegate to the NSTextField: number of seconds (for the date range),
//    so here we get notified when the user has finished editing the seconds range,
//    then we update the date picker control.
//
//
//    NOTE: don't use "textDidEndEditing" because NSTextField is not NSText, rather is a subclass
//    of NSControl, so use the delegate methods from NSControl.
// -------------------------------------------------------------------------------
-(void)controlTextDidEndEditing:(NSNotification*)notification
{
    [self updateDatePickerMode];    // force update of the date picker control
}

@end
