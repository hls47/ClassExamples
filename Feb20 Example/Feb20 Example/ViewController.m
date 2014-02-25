//
//  ViewController.m
//  Feb20 Example
//
//  Created by Jay Palat on 2/19/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    

    
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)loadURL:(id)sender
{
    

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    [manager GET:@"http://api.openweathermap.org/data/2.5/weather?q=Pittsburgh,PA" parameters:nil success:
        ^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", [responseObject class]);
        _urlContent.text  = [responseObject description];
        
        
        UIAlertView *uiAlert = [[UIAlertView alloc] initWithTitle:@"Done!" message:@"Data is here!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [uiAlert show];
        
        [self.urlContent setContentOffset:CGPointMake(0, 0) animated:YES];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    
    
    
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager *dlmanager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:@"https://github.com/vpalat/ClassExamples/archive/master.zip"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDownloadTask *downloadTask = [dlmanager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryPath = [NSURL fileURLWithPath:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]];
        return [documentsDirectoryPath URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        NSLog(@"File downloaded to: %@", filePath);
    }];
    [downloadTask resume];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
