//
//  ViewController.h
//  Feb13Class
//
//  Created by Build User on 2/12/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MBProgressHUD.h>

@interface ViewController : UIViewController <UITextFieldDelegate>


@property (nonatomic, weak) IBOutlet UITextField *urlField;
@property (nonatomic, weak) IBOutlet UIWebView *urlContent;
@property (nonatomic, weak) IBOutlet UIButton *goButton;

@property (nonatomic, weak) MBProgressHUD *hud;

-(IBAction)loadURL:(id)sender;

@end
