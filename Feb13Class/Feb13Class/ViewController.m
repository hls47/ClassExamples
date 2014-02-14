//
//  ViewController.m
//  Feb13Class
//
//  Created by Build User on 2/12/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _responseString = [[NSMutableString alloc] initWithCapacity:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadURL:(id)sender
{
    [_urlField resignFirstResponder];
    _responseString = nil;
    _responseString = [[NSMutableString alloc] initWithCapacity:0];
    NSString *simpleAddr =[_urlField text];
    NSLog(@"simpleAddr: %@", simpleAddr);
    
    if (simpleAddr == nil || [simpleAddr isEqualToString:@""] ) {
        
        simpleAddr = @"http://www.pitt.edu";
    }
    
    NSURL *url = [NSURL URLWithString:simpleAddr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLConnection * conn = [NSURLConnection connectionWithRequest:request delegate:self];
    
    if (conn!=nil){
        [conn start];
    }
}

#pragma mark - UITextField Delegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - NSURLConnectionDelegate

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    UIAlertView *uiAlert = [[UIAlertView alloc] initWithTitle:@"Done!" message:@"Data is here!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [uiAlert show];
    
    [self.urlContent setContentOffset:CGPointMake(0, 0) animated:YES];
    
    [_urlContent setText:_responseString];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSString *newData = [NSString stringWithUTF8String:[data bytes]];
    
    [_responseString appendString:newData];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error debugDescription] delegate:self cancelButtonTitle:@"Acknowledged" otherButtonTitles: nil];
    [alert show];
}

@end
