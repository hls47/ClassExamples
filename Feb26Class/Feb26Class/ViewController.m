//
//  ViewController.m
//  Feb13Class
//
//  Created by Build User on 2/12/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadURL:(id)sender
{
    [_urlField resignFirstResponder];
    NSString *simpleAddr =[_urlField text];
    NSLog(@"simpleAddr: %@", simpleAddr);
    
    if (simpleAddr == nil || [simpleAddr isEqualToString:@""] ) {
        
        simpleAddr = @"http://www.pitt.edu";
    }
    
    NSURL *url = [NSURL URLWithString:simpleAddr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"ro class %@", [responseObject class]);
        [_hud hide:YES];
        NSString *html = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        
        [_urlContent loadHTMLString:html baseURL:nil];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        UIAlertView *errAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [_hud hide:YES];
        [errAlert show];
    }];

    _hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    _hud.labelText = @"Loading";
    [[NSOperationQueue mainQueue] addOperation:operation];
    
}


#pragma mark - UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}



@end
