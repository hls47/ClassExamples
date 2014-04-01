//
//  Student.h
//  BadCoreDataExample
//
//  Created by Jay Palat on 3/20/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Class;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) UNKNOWN_TYPE id;
@property (nonatomic, retain) Class *attends;

@end
