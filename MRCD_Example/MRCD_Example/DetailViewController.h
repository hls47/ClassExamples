//
//  DetailViewController.h
//  MRCD_Example
//
//  Created by Jay Palat on 3/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
