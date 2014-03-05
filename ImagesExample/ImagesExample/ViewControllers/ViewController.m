//
//  ViewController.m
//  ImagesExample
//
//  Created by Jay Palat on 2/26/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _image.image = [UIImage imageNamed:@"eleanor"];
    
    
    NSMutableDictionary *dict= [[NSMutableDictionary alloc] initWithCapacity:2];
    
    
    [dict setObject:[NSNumber numberWithFloat:1.2] forKey:@"SomeNumber"];
    
    [dict setObject:[NSNumber numberWithBool:YES] forKey:@"SomeBool"];
    
    BOOL  truth = [(NSNumber *)[dict objectForKey:@"SomeBool"] boolValue];
    
    NSNumber *aNumber = [dict objectForKey:@"SomeNumber"];
    
    NSLog(@"%@ %hhd", aNumber, truth);
    
    NSLog(@"%@", truth?@"Yes":@"NO");
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
