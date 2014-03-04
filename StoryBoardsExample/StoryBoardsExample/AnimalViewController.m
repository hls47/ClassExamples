//
//  WebViewViewController.m
//  StoryBoardsExample
//
//  Created by Jay Palat on 3/4/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "AnimalViewController.h"

@interface AnimalViewController ()

@end

@implementation AnimalViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Cute";
    self.imageView.image = [UIImage imageNamed:self.imageName];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
