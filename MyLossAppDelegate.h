//
//  MyLossAppDelegate.h
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-10.
//  Copyright 2009 Mecel AB. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyLossAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
