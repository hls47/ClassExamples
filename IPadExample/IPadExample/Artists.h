//
//  Artists.h
//  IPadExample
//
//  Created by Jay Palat on 2/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ArtWork;

@interface Artists : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * birthday;
@property (nonatomic, retain) ArtWork *created;

@end
