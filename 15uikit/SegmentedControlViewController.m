//
//  SegmentedControlViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()

@end

@implementation SegmentedControlViewController


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

- (IBAction)agregarSegmento:(id)sender
{
    [self.segmentedControl insertSegmentWithTitle:[NSString stringWithFormat:@"%lu", self.segmentedControl.numberOfSegments+1] atIndex:self.segmentedControl.numberOfSegments animated:YES];
}

- (IBAction)eliminarSegmento:(id)sender
{
    [self.segmentedControl removeSegmentAtIndex:self.segmentedControl.numberOfSegments-1 animated:YES];
}


#pragma mark - UISegmentedControl

- (IBAction)segmentSelected:(id)sender
{
    self.segmentLabel.text = [NSString stringWithFormat:@"Segmento Seleccionado %ld", (long)self.segmentedControl.selectedSegmentIndex];
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
