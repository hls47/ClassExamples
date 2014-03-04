//
//  WebViewViewController.h
//  StoryBoardsExample
//
//  Created by Jay Palat on 3/4/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalViewController : UIViewController

@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, weak) IBOutlet UIImageView *imageView;

@end
