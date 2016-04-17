//
//  ButtonViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@end

@implementation ButtonViewController


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


#pragma mark - UIButton

- (IBAction)controlEventTouchDown:(id)sender
{
    self.statusLabel.text = @"Touch Down";
}

- (IBAction)controlEventTouchDownRepeat:(id)sender
{
    self.statusLabel.text = @"Touch Down Repeat";
}

- (IBAction)controlEventTouchDragInside:(id)sender
{
    self.statusLabel.text = @"Touch Drag Inside";
}

- (IBAction)controlEventTouchDragOutside:(id)sender
{
    self.statusLabel.text = @"Touch Drag Outside";
}

- (IBAction)controlEventTouchUpInside:(id)sender
{
    self.statusLabel.text = @"Touch Up Inside";
}

- (IBAction)controlEventTouchUpOutside:(id)sender
{
    self.statusLabel.text = @"Touch Up Outside";
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
