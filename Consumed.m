//
//  Consumed.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "Consumed.h"


@implementation Consumed


- (Food *) what {
  return what;
}

- (void) setWhat: (Food *) newValue {
  [what autorelease];
  what = [newValue retain];
}


- (double) ammounth {
  return ammounth;
}

- (void) setAmmounth: (double) newValue {
  ammounth = newValue;
}

- (double)energy {
	return 0.0;
}


- (void)encodeWithCoder:(NSCoder *)aCoder
{
	[aCoder encodeObject:what forKey:@"what"];
	[aCoder encodeDouble:ammounth forKey:@"ammounth"];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
	[super init];
	[self setWhat:[aDecoder decodeObjectForKey:@"what"]];
	[self setAmmounth:[aDecoder decodeDoubleForKey:@"ammounth"]];
	return self;
}


@end
