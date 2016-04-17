//
//  ProgressViewController.m
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import "ProgressViewController.h"

@interface ProgressViewController ()

@property (nonatomic, strong) NSTimer *aTimer;

@end

@implementation ProgressViewController


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
    
    self.aTimer = [NSTimer scheduledTimerWithTimeInterval:0.2f target:self selector:@selector(progressViewValueChanged) userInfo:nil repeats:YES];
    [self.aTimer fire];
}


#pragma mark - UIProgressView

- (void)progressViewValueChanged
{
    self.progressView.progress += 0.05f;
    if (self.progressView.progress >= 1)
        self.progressView.progress = 0.0f;
}


#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
