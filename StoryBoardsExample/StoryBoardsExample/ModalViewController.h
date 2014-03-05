//
//  ModalViewController.h
//  StoryBoardsExample
//
//  Created by Jay Palat on 3/4/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModalViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton *exitButton;

- (IBAction)exit:(id)sender;

@end
