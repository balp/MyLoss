//
//  MyDocument.m
//  MyLoss
//
//  Created by Anders Arnholm on 2009-10-15.
//  Copyright 2009 Anders Arnholm. All rights reserved.
//

#import "MyDocument.h"
#import "Day.h"

@implementation MyDocument
- (IBAction)addExercise:(id)sender {
    
}

- (IBAction)addFood:(id)sender {
    
}

- (IBAction)gotoToday:(id)sender {
	[self viewDate:[NSDate date]];
}
- (id)init
{
    self = [super init];
    if (self) {
		days = [[NSMutableDictionary alloc] init];
    
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"MyDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *) aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
	[self viewDate:[NSDate date]];

}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If the given outError != NULL, ensure that you set *outError when returning nil.

    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.

    // For applications targeted for Panther or earlier systems, you should use the deprecated API -dataRepresentationOfType:. In this case you can also choose to override -fileWrapperRepresentationOfType: or -writeToFile:ofType: instead.

    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
	return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type.  If the given outError != NULL, ensure that you set *outError when returning NO.

    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead. 
    
    // For applications targeted for Panther or earlier systems, you should use the deprecated API -loadDataRepresentation:ofType. In this case you can also choose to override -readFromFile:ofType: or -loadFileWrapperRepresentation:ofType: instead.
    
    if ( outError != NULL ) {
		*outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
	}
    return YES;
}

- (IBAction)dateChanged:(id)sender
{
	NSLog(@"dateChanged");
	[self viewDate:[date dateValue]];
}

- (IBAction)weightChanged:(id)sender
{
	NSLog(@"weightChanged");
	Day *d = [days objectForKey:[date dateValue]];
	if (d == nil) {
		d = [[Day alloc] init];
		[days setObject:d forKey:[date dateValue]];
	}
	[d setWeight:[weight doubleValue]];
}

- (void)viewDate:(NSDate *)newDate {
	[date setDateValue:newDate];
	Day *d = [days objectForKey:newDate];
	if (d != nil) {
		// IBOutlet NSTextField *consumedEnergy;
		[consumedEnergy setDoubleValue:[d energyConsumed]];
		// IBOutlet NSLevelIndicator *energyBar;
		[energyBar setDoubleValue:[d energyConsumed]];
		[energyBar setCriticalValue:([d energyBudget] + [d exercise])];
		// IBOutlet NSTextField *energyBudget;
		[energyBudget setDoubleValue:[d energyBudget]];
		// IBOutlet NSTextField *exersiceEnergy;
		[exersiceEnergy setDoubleValue:[d exercise]];
		// IBOutlet NSTextField *message;
		[message setStringValue:[NSString stringWithFormat:@"You have %lf left today.",
								 [d energyLeft]]];
		// IBOutlet NSTextField *netEnergy;
		[netEnergy setDoubleValue:[d netEnergyUsed]];
		// IBOutlet NSTextField *weight;
		[weight setDoubleValue:[d weight]];
	}
}

@end
