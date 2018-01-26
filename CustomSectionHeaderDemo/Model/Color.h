//
//  Color.h
//  CustomSectionHeaderDemo
//
//  Created by Perfect on 2018/1/25.
//  Copyright © 2018年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SubColor;

@interface Color : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *subColors;
@property (nonatomic) BOOL expanded;

- (instancetype)initWithName:(NSString *)name andSubColors:(NSArray <SubColor *> *)subColors;
+ (NSArray <Color *> *)allColors;

@end
