//
//  AppDelegate.m
//  MRCD_Example
//
//  Created by Jay Palat on 3/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "AppDelegate.h"

#import "MasterViewController.h"
#import "Course.h"
#import "Student.h"

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"MRC_Example"];
    if (![[NSUserDefaults standardUserDefaults] objectForKey:@"HasClass"]){
        NSLog(@"Creating new classes");
        Course *class_101 = [Course MR_createEntity];
        class_101.name = @"Basics 101";
        
        Student *student1 = [Student MR_createEntity];
        student1.name = @"John Smith";
        student1.year = @1;
        
        Student *student2 = [Student MR_createEntity];
        student2.name = @"Jane Smithe";
        student2.year = @1;
        
        NSSet *class = [[NSSet alloc] initWithArray:@[student1, student2]];
        
        [class_101 addTeaches:class];
        // Save Managed Object Context
		[[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:nil];
		
		// Set User Default to prevent another preload of data on startup.
		[[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"HasClass"];
		[[NSUserDefaults standardUserDefaults] synchronize];
        
    
    
    } else {
        NSLog(@"Prebuild complete");
    }
    return YES;
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
    // Saves changes in the application's managed object context before the application terminates.
    [MagicalRecord cleanUp];
}



@end
