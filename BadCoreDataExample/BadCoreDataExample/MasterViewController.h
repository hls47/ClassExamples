//
//  MasterViewController.h
//  BadCoreDataExample
//
//  Created by Jay Palat on 3/19/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
