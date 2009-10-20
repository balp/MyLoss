//
//  Food.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "Food.h"


@implementation Food


- (NSString *) name {
  return name;
}

- (void) setName: (NSString *) newValue {
  [name autorelease];
  name = [newValue retain];
}


- (double) weight {
  return weight;
}

- (void) setWeight: (double) newValue {
  weight = newValue;
}


- (double) energy {
  return energy;
}

- (void) setEnergy: (double) newValue {
  energy = newValue;
}


- (double) fiber {
  return fiber;
}

- (void) setFiber: (double) newValue {
  fiber = newValue;
}


- (double) carbohydrate {
  return carbohydrate;
}

- (void) setCarbohydrate: (double) newValue {
  carbohydrate = newValue;
}


- (double) fat {
  return fat;
}

- (void) setFat: (double) newValue {
  fat = newValue;
}

NSString *name;
double weight;
double energy;
double fiber;
double carbohydrate;
double fat;


- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:name forKey:@"name"];
	[aCoder encodeDouble:weight forKey:@"weight"];
	[aCoder encodeDouble:energy forKey:@"energy"];
	[aCoder encodeDouble:fiber forKey:@"fiber"];
	[aCoder encodeDouble:carbohydrate forKey:@"carbohydrate"];
	[aCoder encodeDouble:fat forKey:@"fat"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
	[super init];
	[self setName:[aDecoder decodeObjectForKey:@"name"]];
	[self setWeight:[aDecoder decodeDoubleForKey:@"weight"]];
	[self setEnergy:[aDecoder decodeDoubleForKey:@"energy"]];
	[self setFiber:[aDecoder decodeDoubleForKey:@"fiber"]];
	[self setCarbohydrate:[aDecoder decodeDoubleForKey:@"carbohydrate"]];
	[self setFat:[aDecoder decodeDoubleForKey:@"fat"]];
	return self;
}

@end
