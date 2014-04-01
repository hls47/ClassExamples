//
//  Student.h
//  MRCD_Example
//
//  Created by Jay Palat on 3/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Course;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) Course *takes;

@end
