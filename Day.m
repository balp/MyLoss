//
//  Day.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "Day.h"
#import "Consumed.h"
#import "Exercise.h"

@implementation Day

- (id)init
{
    self = [super init];
    if (self) {
		consumed = [[NSMutableArray alloc] init];
		exercised = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)setEnergyBudget:(double)budget
{
	energyBudget = budget;
}

- (double)energyBudget
{
	return energyBudget;
}

- (double)energyConsumed
{
	double tmp = 0.0;
	NSEnumerator *e = [consumed objectEnumerator];
	Consumed *c;
	while (c = [e nextObject]) {
		tmp += [c energy];
	}
	return tmp;
}

- (double)exercise
{
	double tmp = 0.0;
	NSEnumerator *e = [exercised objectEnumerator];
	Exercise *exercise;
	while (exercise = [e nextObject]) {
		tmp += [exercise energy];
	}
	return tmp;
}

- (double)netEnergyUsed {
	return [self energyConsumed] - [self exercise];
}

- (double)energyLeft {
	return [self energyBudget] - [self netEnergyUsed];
}

- (void)insertObject:(Consumed *)food inConsumedAtIndex:(int) index {
	[consumed insertObject:food atIndex:index];
}

- (void)removeObjectFromConsumedAtIndex:(int)index {
	[consumed removeObjectAtIndex:index];
}

- (void)setConsumed:(NSMutableArray *)array {
	if (array == consumed) {
		return;
	}
	[consumed release];
	[array retain];
	consumed = array;
}

- (void)insertObject:(Exercise *)exercise inExercisedAtIndex:(int) index {
	[exercised insertObject:exercise atIndex:index];
}

- (void)removeObjectFromExercisedAtIndex:(int)index {
	[exercised removeObjectAtIndex:index];
}

- (void)setExercised:(NSMutableArray *)array {
	if (array == exercised) {
		return;
	}
	[exercised release];
	[array retain];
	exercised = array;
}

- (double) weight {
  return weight;
}

- (void) setWeight: (double) newValue {
  weight = newValue;
}

@end
