//
//  Course.h
//  MRCD_Example
//
//  Created by Jay Palat on 3/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Student;

@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *teaches;
@end

@interface Course (CoreDataGeneratedAccessors)

- (void)addTeachesObject:(Student *)value;
- (void)removeTeachesObject:(Student *)value;
- (void)addTeaches:(NSSet *)values;
- (void)removeTeaches:(NSSet *)values;

@end
