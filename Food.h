//
//  Food.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Food : NSObject <NSCoding> {
	NSString *name;
	double weight;
	double energy;
	double fiber;
	double carbohydrate;
	double fat;
}

- (NSString *) name;
- (void) setName: (NSString *) newValue;
- (double) weight;
- (void) setWeight: (double) newValue;
- (double) energy;
- (void) setEnergy: (double) newValue;
- (double) fiber;
- (void) setFiber: (double) newValue;
- (double) carbohydrate;
- (void) setCarbohydrate: (double) newValue;
- (double) fat;
- (void) setFat: (double) newValue;
@end
