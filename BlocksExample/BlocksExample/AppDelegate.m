//
//  AppDelegate.m
//  BlocksExample
//
//  Created by Jay Palat on 2/18/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NSString *alphabetString = @"abcdefghijklmnopqrstuvwxyz";
    
    _sortArray = [NSMutableArray arrayWithCapacity:1];
    
    for (int i = 25; i>-1; i--) {
        NSString *charString = [alphabetString substringWithRange:NSMakeRange(i, 1)];
        [self.sortArray addObject:charString];
    }
    
    [self printArray:self.sortArray];
    
    
    NSArray * selectorSort = [_sortArray sortedArrayUsingSelector:@selector(compare:)];
    
    [self printArray:selectorSort];
    
    
    NSString *test =@"TESTING";
    
    NSArray * blockSort = [_sortArray sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        NSLog(@"%@", test);
        return [obj1 compare:obj2];
    }];
    
    [self printArray:blockSort];
    
    
    
    
    
    
    UIAlertView *alert =[UIAlertView alloc
    
    return YES;
}

- (void)printArray:(NSArray *)anArray
{
    NSLog(@"Start Print");
    for (NSString *s in anArray) {
        NSLog(@"%@", s);
    }
    
    NSLog(@"End Print");
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
