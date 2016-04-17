//
//  SliderViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()

@end

@implementation SliderViewController


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


#pragma mark - UISlider

- (IBAction)sliderValueChanged:(id)sender
{
    self.statusLabel.text = [NSString stringWithFormat:@"%1.2f", self.slider.value];
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
