//
//  Consumed.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Food;

@interface Consumed : NSObject {
	Food *what;
	double ammounth;
}


- (Food *) what;
- (void) setWhat: (Food *) newValue;
- (double) ammounth;
- (void) setAmmounth: (double) newValue;
@end
