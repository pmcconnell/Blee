//
//  ColorsController.h
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorsController : NSObject

@property (strong, nonatomic) NSArray *colorFamilies;

- (NSArray *)colorsForColorFamilyAtIndex:(NSInteger)index;
- (NSInteger)numberOfColorNamesForColorFamilyAtIndex:(NSInteger)index;
- (UIColor *)colorForIndexPath:(NSIndexPath *)indexPath;
- (NSString *)colorNameForIndexPath:(NSIndexPath *)indexPath;
- (NSString *)familyNameForIndex:(NSInteger)index;

@end

