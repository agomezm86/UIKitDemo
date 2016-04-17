//
//  PickerViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

#define LETTERS [NSArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",nil]
#define NUMBERS [NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",nil]


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


#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component)
    {
        case 0: return [LETTERS count]; break;
        case 1: return [NUMBERS count]; break;
        default: return 0; break;
    }
}


#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component)
    {
        case 0: return [LETTERS objectAtIndex:row]; break;
        case 1: return [NUMBERS objectAtIndex:row]; break;
        default: return @""; break;
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.aLabel.text = [NSString stringWithFormat:@"%@ - %@", [LETTERS objectAtIndex:row], [NUMBERS objectAtIndex:row]];
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
