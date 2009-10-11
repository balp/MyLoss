//
//  TodayHandler.h
//
//  Created by Anders Arnholm on 2009-10-11.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TodayHandler : NSObject {
    IBOutlet NSDatePicker *DatePicker;
    IBOutlet NSLevelIndicator *LevelIndicator;
    IBOutlet NSTextField *DailyBudget;
    IBOutlet NSTextField *ExerciseCalories;
    IBOutlet NSTextField *FoodCaloriesUsed;
    IBOutlet NSTextField *InfoText;
    IBOutlet NSTextField *NetCalories;
}
- (IBAction)addExercise:(NSButton *)sender;
- (IBAction)addFood:(NSButton *)sender;
- (IBAction)gotoToday:(NSButton *)sender;

- (void)reset: (NSObject *)sender;
@end
