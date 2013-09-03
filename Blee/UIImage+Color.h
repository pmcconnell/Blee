//
//  UIImage+Color.h
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color width:(float)width height:(float)height;
@end
