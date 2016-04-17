//
//  MasterViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 22/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController


#pragma mark - UIViewController

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
    {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"UI Catalog";
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:nil];
    self.navigationItem.backBarButtonItem = backBarButtonItem;
    
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableView

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"myCell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    switch (indexPath.row)
    {
        case 0: cell.textLabel.text = @"Button"; break;
        case 1: cell.textLabel.text = @"Segmented Control"; break;
        case 2: cell.textLabel.text = @"Text Field"; break;
        case 3: cell.textLabel.text = @"Slider"; break;
        case 4: cell.textLabel.text = @"Switch"; break;
        case 5: cell.textLabel.text = @"Activity Indicator"; break;
        case 6: cell.textLabel.text = @"Progress View"; break;
        case 7: cell.textLabel.text = @"Stepper"; break;
        case 8: cell.textLabel.text = @"Date Picker"; break;
        case 9: cell.textLabel.text = @"Picker View"; break;
        case 10: cell.textLabel.text = @"Search Bar"; break;
        case 11: cell.textLabel.text = @"Tool Bar"; break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0: [self performSegueWithIdentifier:@"ButtonViewController" sender:nil]; break;
        case 1: [self performSegueWithIdentifier:@"SegmentedControlViewController" sender:nil]; break;
        case 2: [self performSegueWithIdentifier:@"TextFieldViewController" sender:nil]; break;
        case 3: [self performSegueWithIdentifier:@"SliderViewController" sender:nil]; break;
        case 4: [self performSegueWithIdentifier:@"SwitchViewController" sender:nil]; break;
        case 5: [self performSegueWithIdentifier:@"ActivityIndicatorViewController" sender:nil]; break;
        case 6: [self performSegueWithIdentifier:@"ProgressViewController" sender:nil]; break;
        case 7: [self performSegueWithIdentifier:@"StepperViewController" sender:nil]; break;
        case 8: [self performSegueWithIdentifier:@"DatePickerViewController" sender:nil]; break;
        case 9: [self performSegueWithIdentifier:@"PickerViewController" sender:nil]; break;
        case 10: [self performSegueWithIdentifier:@"SearchViewController" sender:nil]; break;
        case 11: [self performSegueWithIdentifier:@"ToolBarViewController" sender:nil]; break;
    }
}


#pragma mark - UIStoryboardSegue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
}

@end
