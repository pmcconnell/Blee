//
//  ColorFamily.h
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorFamily : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *colors;
@property (strong, nonatomic) NSArray *colorNames;

+ (ColorFamily *)colorFamilyFromDictionary:(NSDictionary *)dict;



@end
