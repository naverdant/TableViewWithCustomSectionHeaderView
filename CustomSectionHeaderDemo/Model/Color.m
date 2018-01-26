//
//  Color.m
//  CustomSectionHeaderDemo
//
//  Created by Perfect on 2018/1/25.
//  Copyright © 2018年 Alex. All rights reserved.
//

#import "Color.h"
#import "SubColor.h"

@implementation Color

- (instancetype)initWithName:(NSString *)name andSubColors:(NSArray <SubColor *> *)subColors {
    self = [super init];
    if(self){
        self.name = name;
        self.subColors = subColors;
        self.expanded = YES;
    }
    return self;
}

+ (NSArray <Color *> *)allColors {
    NSMutableArray *colors = [[NSMutableArray alloc] init];
    
    NSMutableArray *graySubColors = [[NSMutableArray alloc] init];
    SubColor *gray1 = [[SubColor alloc] initWithName:@"GRAY" andRed:130/255.0 green:130/255.0 blue:130/255.0];
    [graySubColors addObject:gray1];
    SubColor *gray2 = [[SubColor alloc] initWithName:@"FOSSIL" andRed:120/255.0 green:114/255.0 blue:118/255.0];
    [graySubColors addObject:gray2];
    SubColor *gray3 = [[SubColor alloc] initWithName:@"MINK" andRed:136/255.0 green:128/255.0 blue:125/255.0];
    [graySubColors addObject:gray3];
    SubColor *gray4 = [[SubColor alloc] initWithName:@"PEARL RIVER" andRed:217/255.0 green:221/255.0 blue:220/255.0];
    [graySubColors addObject:gray4];
    SubColor *gray5 = [[SubColor alloc] initWithName:@"ABALONE" andRed:214/255.0 green:207/255.0 blue:199/255.0];
    [graySubColors addObject:gray5];
    SubColor *gray6 = [[SubColor alloc] initWithName:@"HARBOR gray" andRed:199/255.0 green:198/255.0 blue:193/255.0];
    [graySubColors addObject:gray6];
    SubColor *gray7 = [[SubColor alloc] initWithName:@"SMOKE" andRed:190/255.0 green:189/255.0 blue:184/255.0];
    [graySubColors addObject:gray7];
    SubColor *gray8 = [[SubColor alloc] initWithName:@"THUNDER" andRed:190/255.0 green:184/255.0 blue:173/255.0];
    [graySubColors addObject:gray8];
    SubColor *gray9 = [[SubColor alloc] initWithName:@"PEWTER" andRed:153/255.0 green:158/255.0 blue:161/255.0];
    [graySubColors addObject:gray9];
    SubColor *gray10 = [[SubColor alloc] initWithName:@"STEEL" andRed:118/255.0 green:123/255.0 blue:126/255.0];
    [graySubColors addObject:gray10];
    SubColor *gray11 = [[SubColor alloc] initWithName:@"STONE" andRed:136/255.0 green:128/255.0 blue:125/255.0];
    [graySubColors addObject:gray11];
    SubColor *gray12 = [[SubColor alloc] initWithName:@"IRON" andRed:72/255.0 green:73/255.0 blue:75/255.0];
    [graySubColors addObject:gray12];
    SubColor *gray13 = [[SubColor alloc] initWithName:@"RHINO" andRed:185/255.0 green:187/255.0 blue:182/255.0];
    [graySubColors addObject:gray13];
    SubColor *gray14 = [[SubColor alloc] initWithName:@"TROUT" andRed:151/255.0 green:151/255.0 blue:143/255.0];
    [graySubColors addObject:gray14];
    SubColor *gray15 = [[SubColor alloc] initWithName:@"SEAL" andRed:129/255.0 green:131/255.0 blue:128/255.0];
    [graySubColors addObject:gray15];
    SubColor *gray16 = [[SubColor alloc] initWithName:@"LAVA" andRed:128/255.0 green:133/255.0 blue:137/255.0];
    [graySubColors addObject:gray16];
    SubColor *gray17 = [[SubColor alloc] initWithName:@"SHADOW" andRed:54/255.0 green:54/255.0 blue:54/255.0];
    [graySubColors addObject:gray17];
    SubColor *gray18 = [[SubColor alloc] initWithName:@"ASH" andRed:85/255.0 green:77/255.0 blue:74/255.0];
    [graySubColors addObject:gray18];
    SubColor *gray19 = [[SubColor alloc] initWithName:@"ANCHOR" andRed:62/255.0 green:66/255.0 blue:75/255.0];
    [graySubColors addObject:gray19];
    SubColor *gray20 = [[SubColor alloc] initWithName:@"CHARCOAL" andRed:34/255.0 green:32/255.0 blue:33/255.0];
    [graySubColors addObject:gray20];
    Color *gray = [[Color alloc] initWithName:@"gray" andSubColors:graySubColors];
    [colors addObject:gray];
    
    NSMutableArray *pinkSubColors = [[NSMutableArray alloc] init];
    SubColor *pink1 = [[SubColor alloc] initWithName:@"PINK" andRed:248/255.0 green:37/255.0 blue:189/255.0];
    [pinkSubColors addObject:pink1];
    SubColor *pink2 = [[SubColor alloc] initWithName:@"RUBY" andRed:222/255.0 green:27/255.0 blue:97/255.0];
    [pinkSubColors addObject:pink2];
    SubColor *pink3 = [[SubColor alloc] initWithName:@"ULTRA" andRed:253/255.0 green:118/255.0 blue:252/255.0];
    [pinkSubColors addObject:pink3];
    SubColor *pink4 = [[SubColor alloc] initWithName:@"THULIAN" andRed:221/255.0 green:113/255.0 blue:161/255.0];
    [pinkSubColors addObject:pink4];
    SubColor *pink5 = [[SubColor alloc] initWithName:@"MAGENTA" andRed:252/255.0 green:24/255.0 blue:144/255.0];
    [pinkSubColors addObject:pink5];
    SubColor *pink6 = [[SubColor alloc] initWithName:@"ROSE PINK" andRed:253/255.0 green:107/255.0 blue:203/255.0];
    [pinkSubColors addObject:pink6];
    SubColor *pink7 = [[SubColor alloc] initWithName:@"LAVENDER" andRed:251/255.0 green:176/255.0 blue:211/255.0];
    [pinkSubColors addObject:pink7];
    SubColor *pink8 = [[SubColor alloc] initWithName:@"CREAMY" andRed:253/255.0 green:109/255.0 blue:180/255.0];
    [pinkSubColors addObject:pink8];
    SubColor *pink9 = [[SubColor alloc] initWithName:@"FUCHSIA" andRed:252/255.0 green:41/255.0 blue:252/255.0];
    [pinkSubColors addObject:pink9];
    SubColor *pink10 = [[SubColor alloc] initWithName:@"FRENCH ROSE" andRed:243/255.0 green:77/255.0 blue:139/255.0];
    [pinkSubColors addObject:pink10];
    SubColor *pink11 = [[SubColor alloc] initWithName:@"CERISE" andRed:219/255.0 green:53/255.0 blue:101/255.0];
    [pinkSubColors addObject:pink11];
    SubColor *pink12 = [[SubColor alloc] initWithName:@"CARNATION" andRed:253/255.0 green:166/255.0 blue:201/255.0];
    [pinkSubColors addObject:pink12];
    SubColor *pink13 = [[SubColor alloc] initWithName:@"BRICK" andRed:249/255.0 green:98/255.0 blue:130/255.0];
    [pinkSubColors addObject:pink13];
    SubColor *pink14 = [[SubColor alloc] initWithName:@"AMARANTH" andRed:239/255.0 green:157/255.0 blue:187/255.0];
    [pinkSubColors addObject:pink14];
    SubColor *pink15 = [[SubColor alloc] initWithName:@"TAFFY" andRed:247/255.0 green:137/255.0 blue:195/255.0];
    [pinkSubColors addObject:pink15];
    SubColor *pink16 = [[SubColor alloc] initWithName:@"BUBBLE GUM" andRed:252/255.0 green:95/255.0 blue:172/255.0];
    [pinkSubColors addObject:pink16];
    SubColor *pink17 = [[SubColor alloc] initWithName:@"HOT PINK" andRed:245/255.0 green:36/255.0 blue:149/255.0];
    [pinkSubColors addObject:pink17];
    SubColor *pink18 = [[SubColor alloc] initWithName:@"PUNCH" andRed:234/255.0 green:87/255.0 blue:121/255.0];
    [pinkSubColors addObject:pink18];
    SubColor *pink19 = [[SubColor alloc] initWithName:@"LEMONADE" andRed:251/255.0 green:187/255.0 blue:200/255.0];
    [pinkSubColors addObject:pink19];
    SubColor *pink20 = [[SubColor alloc] initWithName:@"FLAMINGO" andRed:250/255.0 green:164/255.0 blue:183/255.0];
    [pinkSubColors addObject:pink20];
    Color *pink = [[Color alloc] initWithName:@"pink" andSubColors:pinkSubColors];
    [colors addObject:pink];
    
    return [colors copy];
}

@end
