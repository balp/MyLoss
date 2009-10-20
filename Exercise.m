//
//  Exercise.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "Exercise.h"


@implementation Exercise


- (NSString *) getName {
  return name;
}

- (void) setName: (NSString *) newValue {
  [name autorelease];
  name = [newValue retain];
}


- (NSTimeInterval) duration {
  return duration;
}

- (void) setDuration: (NSTimeInterval) newValue {
  duration = newValue;
}


- (double) energy {
  return energy;
}

- (void) setEnergy: (double) newValue {
  energy = newValue;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:name forKey:@"name"];
	[aCoder encodeDouble:duration forKey:@"duration"];
	[aCoder encodeDouble:energy forKey:@"energy"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
	[super init];
	[self setName:[aDecoder decodeObjectForKey:@"name"]];
	[self setDuration:[aDecoder decodeDoubleForKey:@"duration"]];
	[self setEnergy:[aDecoder decodeDoubleForKey:@"energy"]];
	return self;
}


@end
