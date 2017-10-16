//
//  UIColor+ZFBAddition.h
//  01-生活圈
//
//  Created by Apple on 16/9/22.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZFBAddition)
+ (instancetype)hm_colorWithHex:(int32_t)hex;
+ (instancetype)hm_colorWithR:(int)red G:(int)green B:(int)blue alpha:(CGFloat)alpha;
+ (instancetype)hm_randomColor;
@end
