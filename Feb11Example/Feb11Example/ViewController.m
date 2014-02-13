//
//  ViewController.m
//  Feb11Example
//
//  Created by Build User on 2/11/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _inputText.keyboardType = UIKeyboardTypeEmailAddress;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (void) textFieldDidBeginEditing:(UITextField *)textField{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Editing!" message:@"We're editing!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [_outLabel setText:textField.text];
    return YES;
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    UIAlertView *newalert = [[UIAlertView alloc] initWithTitle:@"Done Yet?" message:@"Are you done?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    [newalert show];
    
    return NO;
    
}




//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    [_inputText resignFirstResponder];
//    
//}

-(IBAction)handleTap:(id)sender;
{
//    [_inputText resignFirstResponder];
//    [_inputText2 resignFirstResponder];
//    
    NSArray *subviews = [self.view subviews];
    for (UITextField *field in subviews) {
        [field resignFirstResponder];
    }
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

    NSLog(@"Title is %@:", alertView.title);
    if ([alertView.title isEqualToString:@"Done Yet?"]) {
        if (buttonIndex==1) {
            [_inputText resignFirstResponder];
            [_inputText2 resignFirstResponder];
        }
        
    }
    
}




@end












