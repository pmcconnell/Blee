//
//  ColorsController.m
//  Blee
//
//  Created by Patrick McConnell on 4/6/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ColorsController.h"
#import "Colours.h"
#import "ColorFamily.h"

@implementation ColorsController

- (id)init
{
  if (self = [super init]) {
    [self loadColorFamilies];
  }
  return self;
}

/*
- (void)loadColorFamilies
{
  NSString *path = [[NSBundle mainBundle] pathForResource:@"ColorFamilies" ofType:@"plist"];
  
  // root object in plist is a array so grab it
  NSArray *rootArray = [NSArray arrayWithContentsOfFile:path];
  
  NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:rootArray.count];
  
  for (NSDictionary *d in rootArray) {
    [tempArray addObject:[ColorFamily colorFamilyFromDictionary:d]];
  }
  
  _colorFamilies = [NSArray arrayWithArray:tempArray];
}
*/
- (void)loadColorFamilies
{
  _colorFamilies = @[ [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"System Colors",
                                                                 @"colors"      : @[ ColorInfoBlue,
                                                                                     ColorSuccess,
                                                                                     ColorWarning,
                                                                                     ColorDanger ],
                                                                 @"colorNames"  : @[ @"Info Blue",
                                                                                     @"Success",
                                                                                     @"Warning",
                                                                                     @"Danger" ]
                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Whites",
                                                                 @"colors"      : @[ColorAntiqueWhite,
                                                                                    ColorOldLace,
                                                                                    ColorIvory,
                                                                                    ColorSeashell,
                                                                                    ColorGhostWhite,
                                                                                    ColorSnow,
                                                                                    ColorLinen ],
                                                                 @"colorNames"  : @[ @"Antique White",
                                                                                     @"Old Lace",
                                                                                     @"Ivory",
                                                                                     @"Seashell",
                                                                                     @"Ghost White",
                                                                                     @"Snow",
                                                                                     @"Linen" ]

                                                              }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Grays",
                                                                 @"colors"      : @[Color25PercentBlack,
                                                                                    Color50PercentBlack,
                                                                                    Color75PercentBlack,
                                                                                    ColorWarmGray,
                                                                                    ColorCoolGray,
                                                                                    ColorCharcoal ],
                                                                 @"colorNames"  : @[@"25 Percent Black",
                                                                                     @"50 Percent Black",
                                                                                     @"75 Percent Black",
                                                                                     @"Warm Gray",
                                                                                     @"Cool Gray",
                                                                                     @"Charcoal" ]

                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Blues",
                                                                 @"colors"      : @[ColorTeal,
                                                                                    ColorSteelBlue,
                                                                                    ColorRobinEgg,
                                                                                    ColorPastelBlue,
                                                                                    ColorTurquoise,
                                                                                    ColorSkyBlue,
                                                                                    ColorIndigo,
                                                                                    ColorDenim,
                                                                                    ColorBlueberry,
                                                                                    ColorCornflower,
                                                                                    ColorBabyBlue,
                                                                                    ColorMidnightBlue,
                                                                                    ColorFadedBlue,
                                                                                    ColorIceberg,
                                                                                    ColorWave ],
                                                                 @"colorNames"  : @[@"Teal",
                                                                                   @"Steel Blue",
                                                                                   @"Robin Egg",
                                                                                   @"Pastel Blue",
                                                                                   @"Turquoise",
                                                                                   @"Sky Blue",
                                                                                   @"Indigo",
                                                                                   @"Denim",
                                                                                   @"Blueberry",
                                                                                   @"Cornflower",
                                                                                   @"Baby Blue",
                                                                                   @"Midnight Blue",
                                                                                   @"Faded Blue",
                                                                                   @"Iceberg",
                                                                                   @"Wave" ]

                                                             }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"          : @"Greens",
                                                                 @"colors"      : @[ColorEmerald,
                                                                                    ColorGrass,
                                                                                    ColorPastelGreen,
                                                                                    ColorSeafoam,
                                                                                    ColorPaleGreen,
                                                                                    ColorCactusGreen,
                                                                                    ColorChartreuse,
                                                                                    ColorHollyGreen,
                                                                                    ColorOlive,
                                                                                    ColorOliveDrab,
                                                                                    ColorMoneyGreen,
                                                                                    ColorHoneydew,
                                                                                    ColorLime,
                                                                                    ColorCardTable ],
                                                                 @"colorNames"  : @[@"Emerald",
                                                                                     @"Grass",
                                                                                     @"Pastel Green",
                                                                                     @"Seafoam",
                                                                                     @"Pale Green",
                                                                                     @"Cactus Green",
                                                                                     @"Chartreuse",
                                                                                     @"Holly Green",
                                                                                     @"Olive",
                                                                                     @"Olive Drab",
                                                                                     @"Money Green",
                                                                                     @"Honeydew",
                                                                                     @"Lime",
                                                                                     @"Card Table" ]
                                                              }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Reds",
                                                                 @"colors"      : @[ColorSalmon,
                                                                                    ColorBrickRed,
                                                                                    ColorEasterPink,
                                                                                    ColorGrapefruit,
                                                                                    ColorPink,
                                                                                    ColorIndianRed,
                                                                                    ColorStrawberry,
                                                                                    ColorCoral,
                                                                                    ColorMaroon,
                                                                                    ColorWatermelon,
                                                                                    ColorTomato,
                                                                                    ColorPinkLipstick,
                                                                                    ColorPaleRose,
                                                                                    ColorCrimson ],
                                                                 @"colorNames"  : @[@"Salmon",
                                                                                     @"BrickRed",
                                                                                     @"EasterPink",
                                                                                     @"Grapefruit",
                                                                                     @"Pink",
                                                                                     @"IndianRed",
                                                                                     @"Strawberry",
                                                                                     @"Coral",
                                                                                     @"Maroon",
                                                                                     @"Watermelon",
                                                                                     @"Tomato",
                                                                                     @"PinkLipstick",
                                                                                     @"PaleRose",
                                                                                     @"Crimson" ]

                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Purples",
                                                                 @"colors"      : @[ColorEggplant,
                                                                                    ColorPastelPurple,
                                                                                    ColorPalePurple,
                                                                                    ColorCoolPurple,
                                                                                    ColorViolet,
                                                                                    ColorPlum,
                                                                                    ColorLavender,
                                                                                    ColorRaspberry,
                                                                                    ColorFuschia,
                                                                                    ColorGrape,
                                                                                    ColorPeriwinkle,
                                                                                    ColorOrchid ],
                                                                   @"colorNames"  : @[@"Eggplant",
                                                                                       @"Pastel Purple",
                                                                                       @"PalePurple",
                                                                                       @"CoolPurple",
                                                                                       @"Violet",
                                                                                       @"Plum",
                                                                                       @"Lavender",
                                                                                       @"Raspberry",
                                                                                       @"Fuschia",
                                                                                       @"Grape",
                                                                                       @"Periwinkle",
                                                                                       @"Orchid" ]

                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Yellows",
                                                                 @"colors"      : @[ColorGoldenrod,
                                                                                    ColorYellowGreen,
                                                                                    ColorBanana,
                                                                                    ColorMustard,
                                                                                    ColorButtermilk,
                                                                                    ColorGold,
                                                                                    ColorCream,
                                                                                    ColorLightCream,
                                                                                    ColorWheat,
                                                                                    ColorBeige ],
                                                                 @"colorNames"  : @[@"Goldenrod",
                                                                                     @"Yellow Green",
                                                                                     @"Banana",
                                                                                     @"Mustard",
                                                                                     @"Buttermilk",
                                                                                     @"Gold",
                                                                                     @"Cream",
                                                                                     @"LightCream",
                                                                                     @"Wheat",
                                                                                     @"Beige" ]
                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Oranges",
                                                                 @"colors"      : @[ColorPeach,
                                                                                    ColorBurntOrange,
                                                                                    ColorPastelOrange,
                                                                                    ColorCantaloupe,
                                                                                    ColorCarrot,
                                                                                    ColorMandarin ],
                                                                 @"colorNames"  : @[@"Peach",
                                                                                     @"Burnt Orange",
                                                                                     @"Pastel Orange",
                                                                                     @"Cantaloupe",
                                                                                     @"Carrot",
                                                                                     @"Mandarin" ]

                                                               }],
                      
                      [ColorFamily colorFamilyFromDictionary: @{ @"name"        : @"Browns",
                                                                 @"colors"      : @[ColorChiliPowder,
                                                                                    ColorBurntSienna,
                                                                                    ColorChocolate,
                                                                                    ColorCoffee,
                                                                                    ColorCinnamon,
                                                                                    ColorAlmond,
                                                                                    ColorEggshell,
                                                                                    ColorCoffee,
                                                                                    ColorSand,
                                                                                    ColorMud,
                                                                                    ColorSienna,
                                                                                    ColorDust ],
                                                                 @"colorNames"  : @[@"ChiliPowder",
                                                                                     @"Burnt Sienna",
                                                                                     @"Chocolate",
                                                                                     @"Coffee",
                                                                                     @"Cinnamon",
                                                                                     @"Almond",
                                                                                     @"Eggshell",
                                                                                     @"Coffee",
                                                                                     @"Sand",
                                                                                     @"Mud",
                                                                                     @"Sienna",
                                                                                     @"Dust" ]

                                                               }]
                      ];
}

- (ColorFamily *)colorFamilyAtIndex:(NSInteger)index
{
  return [self.colorFamilies objectAtIndex:index];
}


- (NSArray *)colorsForColorFamilyAtIndex:(NSInteger)index
{
  return  [[self colorFamilyAtIndex:index] colors];
}


- (NSInteger)numberOfColorNamesForColorFamilyAtIndex:(NSInteger)index
{
  return [[self colorsForColorFamilyAtIndex:index]count];
}


- (UIColor *)colorForIndexPath:(NSIndexPath *)indexPath
{
  return [[self colorFamilyAtIndex:indexPath.section] colors][indexPath.row];
}

- (NSString *)colorNameForIndexPath:(NSIndexPath *)indexPath
{
  return [[self colorFamilyAtIndex:indexPath.section] colorNames][indexPath.row];
}

- (NSString *)familyNameForIndex:(NSInteger)index
{
  return [[self colorFamilyAtIndex:index] name];
}


@end
