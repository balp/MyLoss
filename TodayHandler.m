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
    
}

- (IBAction)addFood:(NSButton *)sender {
    
}

- (IBAction)gotoToday:(NSButton *)sender {
	[DatePicker setDateValue: [NSDate date]];
    
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
@end
