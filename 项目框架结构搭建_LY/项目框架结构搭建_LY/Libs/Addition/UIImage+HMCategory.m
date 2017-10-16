//
//  UIImage+HMCategory.m
//  HMMeiTuanHD
//
//  Created by Apple on 16/12/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "UIImage+HMCategory.h"

@implementation UIImage (HMCategory)
/*
 UIImageResizingModeTile, 平铺
 UIImageResizingModeStretch, 拉伸
 */
+ (UIImage *)imageResizableImageWithImageNamed: (NSString *)imgName{
    // 实例化image
    UIImage *image = [UIImage imageNamed:imgName];
    CGFloat top = image.size.height * 0.5;
    CGFloat left = image.size.width * 0.5;
    CGFloat bottom = image.size.height * 0.5;
    CGFloat right = image.size.width * 0.5;
    // 方式02
    //    image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(top, left, bottom, right) resizingMode:UIImageResizingModeStretch];
}

@end
