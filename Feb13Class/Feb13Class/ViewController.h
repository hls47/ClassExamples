//
//  ViewController.h
//  Feb13Class
//
//  Created by Build User on 2/12/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate, UITextFieldDelegate>


@property (nonatomic, weak) IBOutlet UITextField *urlField;
@property (nonatomic, weak) IBOutlet UITextView *urlContent;
@property (nonatomic, weak) IBOutlet UIButton *goButton;

@property (nonatomic, strong) NSMutableString *responseString;

-(IBAction)loadURL:(id)sender;

@end
