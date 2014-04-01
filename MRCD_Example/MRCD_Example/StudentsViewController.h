//
//  StudentsViewController.h
//  MRCD_Example
//
//  Created by Jay Palat on 4/1/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface StudentsViewController : UITableViewController

@property (nonatomic, strong) Course *className;
@property (nonatomic, strong) NSMutableArray *studentList;

@end
