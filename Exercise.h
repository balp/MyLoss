//
//  Exercise.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Exercise : NSObject {
	NSString *name;
	NSTimeInterval duration;
	double energy;
}

- (NSString *) getName;
- (void) setName: (NSString *) newValue;
- (NSTimeInterval) duration;
- (void) setDuration: (NSTimeInterval) newValue;
- (double) energy;
- (void) setEnergy: (double) newValue;
@end
