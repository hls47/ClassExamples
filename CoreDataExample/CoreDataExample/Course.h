//
//  Course.h
//  CoreDataExample
//
//  Created by Jay Palat on 3/20/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Student;

@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) Student *holds;

@end
