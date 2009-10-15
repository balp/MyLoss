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

@end
