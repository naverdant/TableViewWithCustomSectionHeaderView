//
//  SubColor.h
//  CustomSectionHeaderDemo
//
//  Created by Perfect on 2018/1/25.
//  Copyright © 2018年 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SubColor : NSObject
@property (strong, nonatomic) NSString *name;
@property (nonatomic) CGFloat red;
@property (nonatomic) CGFloat green;
@property (nonatomic) CGFloat blue;

- (instancetype)initWithName:(NSString *)name andRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

@end
