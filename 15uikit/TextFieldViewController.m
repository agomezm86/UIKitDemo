//
//  TextFieldViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "TextFieldViewController.h"

@interface TextFieldViewController ()

@end

@implementation TextFieldViewController


#pragma mark - Init

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


#pragma mark - UITextField

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldShouldBeginEditing";
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldDidBeginEditing";
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldShouldEndEditing";
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldDidEndEditing";
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    self.statusLabel.text = @"shouldChangeCharactersInRange";
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldShouldClear";
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.statusLabel.text = @"textFieldShouldReturn";
    return YES;
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
