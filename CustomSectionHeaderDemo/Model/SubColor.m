//
//  SubColor.m
//  CustomSectionHeaderDemo
//
//  Created by Perfect on 2018/1/25.
//  Copyright © 2018年 Alex. All rights reserved.
//

#import "SubColor.h"

@implementation SubColor

- (instancetype)initWithName:(NSString *)name andRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    self = [super init];
    if(self){
        self.name = name;
        self.red = red;
        self.green = green;
        self.blue = blue;
    }
    return self;
}

@end
