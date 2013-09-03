//
//  ColorFamily.m
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ColorFamily.h"

@implementation ColorFamily

+ (ColorFamily *)colorFamilyFromDictionary:(NSDictionary *)dict
{
  ColorFamily *family = [[ColorFamily alloc]init];
  
  NSEnumerator *enumerator = [dict keyEnumerator];
  NSString *key;
  
  while ((key = [enumerator nextObject])) {
    [family setValuesForKeysWithDictionary:dict];
  }
  return family;
}


@end
