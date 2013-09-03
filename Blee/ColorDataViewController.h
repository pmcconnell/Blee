//
//  ColorDataViewController.h
//  Blee
//
//  Created by Patrick McConnell on 9/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorDataViewController : UIViewController

@property (strong, nonatomic) UIColor *color;

@property (weak, nonatomic) IBOutlet UIImageView *colorImage;
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;
@property (weak, nonatomic) IBOutlet UILabel *rgbAlphaLabel;
@property (weak, nonatomic) IBOutlet UILabel *hueLabel;
@property (weak, nonatomic) IBOutlet UILabel *satLabel;
@property (weak, nonatomic) IBOutlet UILabel *brightLabel;
@property (weak, nonatomic) IBOutlet UILabel *hsbAlphaLabel;
@end
