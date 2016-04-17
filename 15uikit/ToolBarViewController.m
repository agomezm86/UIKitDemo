//
//  ToolBarViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "ToolBarViewController.h"

@interface ToolBarViewController ()

@end

@implementation ToolBarViewController


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


#pragma mark - UIBarButtonItem

- (IBAction)addButtonPressed:(id)sender
{
    self.statusLabel.text = @"Add";
}

- (IBAction)composeButtonPressed:(id)sender
{
    self.statusLabel.text = @"Compose";
}

- (IBAction)replyButtonPressed:(id)sender
{
    self.statusLabel.text = @"Reply";
}

- (IBAction)actionButtonPressed:(id)sender
{
    self.statusLabel.text = @"Action";
}

- (IBAction)trashButtonPressed:(id)sender
{
    self.statusLabel.text = @"Trash";
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
