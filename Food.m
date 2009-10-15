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

@end
