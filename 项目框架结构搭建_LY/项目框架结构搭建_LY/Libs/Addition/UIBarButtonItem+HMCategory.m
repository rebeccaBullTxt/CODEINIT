//
//  UIBarButtonItem+HMCategory.m
//  HMMeiTuanHD
//
//  Created by Apple on 16/12/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIBarButtonItem+HMCategory.h"

@implementation UIBarButtonItem (HMCategory)


// 自定义导航上的按钮
+(UIBarButtonItem *)barButtonItemWithImgName:(NSString *)imgName Target:(id) target action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置image
    [btn setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",imgName]] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
