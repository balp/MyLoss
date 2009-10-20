//
//  Day.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//


#import <Cocoa/Cocoa.h>

@class Consumed;
@class Exercise;

/**
 * A users day
 */
@interface Day : NSObject <NSCoding> {
	NSMutableArray *consumed;
	NSMutableArray *exercised;
	double weight;
	double energyBudget;
}

- (void)setEnergyBudget:(double)budget;
- (double)energyBudget;
- (double)energyConsumed;
- (double)exercise;
- (double)netEnergyUsed;
- (double)energyLeft;

- (void)insertObject:(Consumed *)food inConsumedAtIndex:(int) index;
- (void)removeObjectFromConsumedAtIndex:(int)index;
- (void)setConsumed:(NSMutableArray *)array;

- (void)insertObject:(Exercise *)exercise inExercisedAtIndex:(int) index;
- (void)removeObjectFromExercisedAtIndex:(int)index;
- (void)setExercised:(NSMutableArray *)array;



- (double) weight;
- (void) setWeight: (double) newValue;
@end
