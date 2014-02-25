//
//  ViewController.h
//  Feb20 Example
//
//  Created by Jay Palat on 2/19/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 

@property (nonatomic, weak) IBOutlet UITextView *urlContent;
@property (nonatomic, weak) IBOutlet UITextField *urlbar;

-(IBAction)loadURL:(id)sender;

@end
