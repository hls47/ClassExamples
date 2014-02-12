//
//  ViewController.h
//  Feb11Example
//
//  Created by Build User on 2/11/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *outLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputText;
@property (nonatomic, weak) IBOutlet UITextField *inputText2;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *TapAll;

@end
