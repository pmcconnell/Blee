//
//  UIImage+Color.m
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color {
  CGRect rect = CGRectMake(0, 0, 1, 1);
  // Create a 1 by 1 pixel context
  UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
  [color setFill];
  UIRectFill(rect);   // Fill it with your color
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color width:(float)width height:(float)height
{
  if (width <= 0) {
    width = 80.0;
  }
  
  if (height <= 0) {
    height = 80.0;
  }
  
  CGRect rect = CGRectMake(0, 0, width, height);
  UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
  [color setFill];
  UIRectFill(rect);   // Fill it with your color
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  return image;
}


@end
