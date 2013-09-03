//
//  ColorDataViewController.m
//  Blee
//
//  Created by Patrick McConnell on 9/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ColorDataViewController.h"
#import "UIImage+Color.h"
#import "Colours.h"

@interface ColorDataViewController ()

@end

@implementation ColorDataViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  [self configureBaseImageView];
  [self configureRGBLabels];
  [self configureHSBLabels];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)configureBaseImageView
{
  CGSize imageSize = self.colorImage.frame.size;
  self.colorImage.image = [UIImage imageWithColor:self.color width:imageSize.width height:imageSize.height];
}


- (void)configureRGBLabels
{
  NSArray *rgb = [Colours rgbaArrayFromColor:self.color];
  self.redLabel.text      = [NSString stringWithFormat:@"%@", rgb[0]];
  self.greenLabel.text    = [NSString stringWithFormat:@"%@", rgb[1]];
  self.blueLabel.text     = [NSString stringWithFormat:@"%@", rgb[2]];
  self.rgbAlphaLabel.text = [NSString stringWithFormat:@"%f", [rgb[3] floatValue]];
}

- (void)configureHSBLabels
{
  NSArray *hsb = [Colours hsbaArrayFromColor:self.color];
  self.hueLabel.text      = [NSString stringWithFormat:@"%@", hsb[0]];
  self.satLabel.text      = [NSString stringWithFormat:@"%@", hsb[1]];
  self.brightLabel.text   = [NSString stringWithFormat:@"%@", hsb[2]];
  self.hsbAlphaLabel.text = [NSString stringWithFormat:@"%f", [hsb[3] floatValue]];
}

@end
