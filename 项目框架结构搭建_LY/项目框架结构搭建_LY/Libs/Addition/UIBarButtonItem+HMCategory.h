//
//  UIBarButtonItem+HMCategory.h
//  HMMeiTuanHD
//
//  Created by Apple on 16/12/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HMCategory)


// 自定义导航上的按钮
+(UIBarButtonItem *)barButtonItemWithImgName:(NSString *)imgName Target:(id) target action:(SEL)action;

@end
