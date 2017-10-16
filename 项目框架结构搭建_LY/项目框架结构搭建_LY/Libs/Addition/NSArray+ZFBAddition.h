//
//  NSArray+ZFBAddition.h
//  03-支付宝分类界面
//
//  Created by Apple on 16/9/23.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ZFBAddition)
+ (instancetype)hm_arrayWithPlist:(NSString *)plistName className:(NSString *)className;
@end
