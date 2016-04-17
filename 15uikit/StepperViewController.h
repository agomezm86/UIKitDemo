//
//  StepperViewController.h
//  15UIKit
//
//  Created by Alejandro Gomez on 23/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StepperViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIStepper *stepper;
@property (nonatomic, strong) IBOutlet UILabel *statusLabel;

@end
