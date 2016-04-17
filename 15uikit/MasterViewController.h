//
//  MasterViewController.h
//  15UIKit
//
//  Created by Alejandro Gomez on 22/01/14.
//  Copyright (c) 2014 Intergrupo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
