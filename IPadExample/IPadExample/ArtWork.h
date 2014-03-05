//
//  ArtWork.h
//  IPadExample
//
//  Created by Jay Palat on 2/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ArtWork : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDate * creation_date;
@property (nonatomic, retain) NSManagedObject *created_by;

@end
