//
//  MasterTableViewController.m
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "MasterTableViewController.h"
#import "ColorsController.h"
#import "Colours.h"
#import "ColorFamily.h"
#import "UIImage+Color.h"


@interface MasterTableViewController ()
  @property (strong, nonatomic) ColorsController *colorsController;
@end

@implementation MasterTableViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  self.title = @"Colors";
  _colorsController = [[ColorsController alloc]init];
  
  UISplitViewController *splitVC = (UISplitViewController *)self.navigationController.parentViewController;
  UINavigationController *detailNavControlller = splitVC.viewControllers[1];
  _detailViewController = detailNavControlller.childViewControllers[0];
  
  self.contentSizeForViewInPopover = CGSizeMake(320.0, 300.0);
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return self.colorsController.colorFamilies.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.colorsController numberOfColorNamesForColorFamilyAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"colorCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  cell.imageView.image = [UIImage imageWithColor: [self.colorsController colorForIndexPath:indexPath] width:44.0 height:44.0];
  cell.textLabel.text = [self.colorsController colorNameForIndexPath:indexPath];
//  cell.contentView.backgroundColor = [self.colorsController colorForIndexPath:indexPath];
  
  return cell;
}


#pragma mark - Table view delegate

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  return [self.colorsController familyNameForIndex:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  UIColor *baseColor = [self.colorsController colorForIndexPath:indexPath];
  NSString *baseColorName = [self.colorsController colorNameForIndexPath:indexPath];
  [self.detailViewController initializeWithBaseColor: baseColor named:baseColorName];
}

@end
