//
//  DetailViewController.m
//  Blee
//
//  Created by Patrick McConnell on 4/7/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "DetailViewController.h"
#import "Colours.h"
#import "UIImage+Color.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIColor *baseColor;
@property (strong, nonatomic) NSString *baseColorName;
@property (strong, nonatomic) UIPopoverController *popover;
@end

@implementation DetailViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
//  UISplitViewController *splitVC = (UISplitViewController *)self.navigationController.parentViewController;
//  splitVC.delegate = self;
  
  [self initializeWithBaseColor:ColorInfoBlue named:@"Info Blue"];
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)initializeWithBaseColor:(UIColor *)baseColor named:(NSString *)baseColorName
{
  _baseColor = baseColor;
  _baseColorName = baseColorName;

  self.colorNameLabel.text = self.baseColorName;
  self.hexLabel.text = [Colours hexFromColor:self.baseColor];

  [self configureBaseImageView];
  [self configureRGBLabels];
  [self configureHSBLabels];
  [self configureAnalagous];
  [self configureMonochromatic];
  [self configureTriad];
  [self configureComplimentary];
}

#pragma mark - Helpers

- (void)configureBaseImageView
{
  CGSize imageSize = self.baseColorImageView.frame.size;
  self.baseColorImageView.image = [UIImage imageWithColor:self.baseColor width:imageSize.width height:imageSize.height];
}


- (void)configureRGBLabels
{
  NSArray *rgb = [Colours rgbaArrayFromColor:self.baseColor];
  self.redLabel.text      = [NSString stringWithFormat:@"%@", rgb[0]];
  self.greenLabel.text    = [NSString stringWithFormat:@"%@", rgb[1]];
  self.blueLabel.text     = [NSString stringWithFormat:@"%@", rgb[2]];
  self.rgbAlphaLabel.text = [NSString stringWithFormat:@"%f", [rgb[3] floatValue]];
}

- (void)configureHSBLabels
{
  NSArray *hsb = [Colours hsbaArrayFromColor:self.baseColor];
  self.hueLabel.text      = [NSString stringWithFormat:@"%@", hsb[0]];
  self.satLabel.text      = [NSString stringWithFormat:@"%@", hsb[1]];
  self.brightLabel.text   = [NSString stringWithFormat:@"%@", hsb[2]];
  self.hsbAlphaLabel.text = [NSString stringWithFormat:@"%f", [hsb[3] floatValue]];
}


- (void)configureAnalagous
{
  NSArray *a = [Colours generateColorSchemeFromColor:self.baseColor ofType:ColorSchemeAnalagous];
  CGSize imageSize = self.analagousImageView1.frame.size;
  self.analagousImageView1.image = [UIImage imageWithColor:a[0] width:imageSize.width height:imageSize.height];
  self.analagousImageView2.image = [UIImage imageWithColor:a[1] width:imageSize.width height:imageSize.height];
  self.analagousImageView3.image = [UIImage imageWithColor:a[2] width:imageSize.width height:imageSize.height];
  self.analagousImageView4.image = [UIImage imageWithColor:a[3] width:imageSize.width height:imageSize.height];
}

- (void)configureMonochromatic
{
  NSArray *a = [Colours generateColorSchemeFromColor:self.baseColor ofType:ColorSchemeMonochromatic];
  CGSize imageSize = self.monoImageView1.frame.size;
  self.monoImageView1.image = [UIImage imageWithColor:a[0] width:imageSize.width height:imageSize.height];
  self.monoImageView2.image = [UIImage imageWithColor:a[1] width:imageSize.width height:imageSize.height];
  self.monoImageView3.image = [UIImage imageWithColor:a[2] width:imageSize.width height:imageSize.height];
  self.monoImageView4.image = [UIImage imageWithColor:a[3] width:imageSize.width height:imageSize.height];
}


- (void)configureTriad
{
  NSArray *a = [Colours generateColorSchemeFromColor:self.baseColor ofType:ColorSchemeTriad];
  CGSize imageSize = self.triadImageView1.frame.size;
  self.triadImageView1.image = [UIImage imageWithColor:a[0] width:imageSize.width height:imageSize.height];
  self.triadImageView2.image = [UIImage imageWithColor:a[1] width:imageSize.width height:imageSize.height];
  self.triadImageView3.image = [UIImage imageWithColor:a[2] width:imageSize.width height:imageSize.height];
  self.triadImageView4.image = [UIImage imageWithColor:a[3] width:imageSize.width height:imageSize.height];
}


- (void)configureComplimentary
{
  NSArray *a = [Colours generateColorSchemeFromColor:self.baseColor ofType:ColorSchemeComplementary];
  CGSize imageSize = self.compImageView1.frame.size;
  self.compImageView1.image = [UIImage imageWithColor:a[0] width:imageSize.width height:imageSize.height];
  self.compImageView2.image = [UIImage imageWithColor:a[1] width:imageSize.width height:imageSize.height];
  self.compImageView3.image = [UIImage imageWithColor:a[2] width:imageSize.width height:imageSize.height];
  self.compImageView4.image = [UIImage imageWithColor:a[3] width:imageSize.width height:imageSize.height];
}


#pragma mark - Split View Delegates

- (void)splitViewController: (UISplitViewController*)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem*)barButtonItem
       forPopoverController: (UIPopoverController*)pc {
  barButtonItem.title = @"Colors";
  [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
//  NSMutableArray *items = [[_toolbar items] mutableCopy];
//  [items insertObject:barButtonItem atIndex:0];
//  [_toolbar setItems:items animated:YES];
  self.popover = pc;
}

- (void)splitViewController: (UISplitViewController*)svc
     willShowViewController:(UIViewController *)aViewController
  invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
  [self.navigationItem setLeftBarButtonItem:nil animated:YES];
//  NSMutableArray *items = [[_toolbar items] mutableCopy];
//  [items removeObjectAtIndex:0];
//  [_toolbar setItems:items animated:YES];
  self.popover = nil;
}



@end
