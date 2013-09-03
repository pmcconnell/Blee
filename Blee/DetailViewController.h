//
//  DetailViewController.h
//  Blee
//
//  Created by Patrick McConnell on 4/7/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;


@property (weak, nonatomic) IBOutlet UIImageView *baseColorImageView;
@property (weak, nonatomic) IBOutlet UILabel *colorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *hexLabel;

@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;
@property (weak, nonatomic) IBOutlet UILabel *rgbAlphaLabel;


@property (weak, nonatomic) IBOutlet UILabel *hsbLabel;
@property (weak, nonatomic) IBOutlet UILabel *hueLabel;
@property (weak, nonatomic) IBOutlet UILabel *satLabel;
@property (weak, nonatomic) IBOutlet UILabel *brightLabel;
@property (weak, nonatomic) IBOutlet UILabel *hsbAlphaLabel;

@property (weak, nonatomic) IBOutlet UIImageView *analagousImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *analagousImageView2;
@property (weak, nonatomic) IBOutlet UIImageView *analagousImageView3;
@property (weak, nonatomic) IBOutlet UIImageView *analagousImageView4;

@property (weak, nonatomic) IBOutlet UIImageView *monoImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *monoImageView2;
@property (weak, nonatomic) IBOutlet UIImageView *monoImageView3;
@property (weak, nonatomic) IBOutlet UIImageView *monoImageView4;

@property (weak, nonatomic) IBOutlet UIImageView *triadImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *triadImageView2;
@property (weak, nonatomic) IBOutlet UIImageView *triadImageView3;
@property (weak, nonatomic) IBOutlet UIImageView *triadImageView4;

@property (weak, nonatomic) IBOutlet UIImageView *compImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *compImageView2;
@property (weak, nonatomic) IBOutlet UIImageView *compImageView3;
@property (weak, nonatomic) IBOutlet UIImageView *compImageView4;

- (IBAction)showColorPopover:(UITapGestureRecognizer *)recognizer;

- (void)initializeWithBaseColor:(UIColor *)baseColor named:(NSString *)baseColorName;
@end
