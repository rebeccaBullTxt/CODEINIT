//
//  UILabel+ZFBAddition.m
//  01-生活圈
//
//  Created by Apple on 16/9/22.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "UILabel+ZFBAddition.h"

@implementation UILabel (ZFBAddition)
+ (UILabel *)hm_labelWithText:(NSString *)text color:(UIColor *)color font:(CGFloat)fontSize{
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:fontSize];
    
    return label;
}
@end
