//
//  Event.h
//  CoreDataExample
//
//  Created by Jay Palat on 3/20/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;

@end
