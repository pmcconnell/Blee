//
//  MasterTableViewController.h
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface MasterTableViewController : UITableViewController

@property (weak, nonatomic) DetailViewController *detailViewController;

@end
