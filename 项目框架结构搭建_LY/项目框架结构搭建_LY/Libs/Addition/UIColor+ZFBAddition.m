//
//  UIColor+ZFBAddition.m
//  01-生活圈
//
//  Created by Apple on 16/9/22.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "UIColor+ZFBAddition.h"

@implementation UIColor (ZFBAddition)
+ (instancetype)hm_colorWithHex:(int32_t)hex{
    //90  a2   c0
    int red = (hex & 0xFF0000) >> 16;
    int green = (hex & 0x00FF00) >> 8;
    int blue = hex & 0x0000FF;
    
    return [UIColor hm_colorWithR:red G:green B:blue alpha:1];
}
+ (instancetype)hm_colorWithR:(int)red G:(int)green B:(int)blue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
+ (instancetype)hm_randomColor{
    return [UIColor hm_colorWithR:arc4random_uniform(256) G:arc4random_uniform(256) B:arc4random_uniform(256) alpha:1];
}
@end
