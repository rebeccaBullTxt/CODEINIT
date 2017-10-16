//
//  NSArray+ZFBAddition.m
//  03-支付宝分类界面
//
//  Created by Apple on 16/9/23.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import "NSArray+ZFBAddition.h"

@implementation NSArray (ZFBAddition)
+ (instancetype)hm_arrayWithPlist:(NSString *)plistName className:(NSString *)className{
    NSURL *url = [[NSBundle mainBundle]URLForResource:plistName withExtension:nil];
    
    NSArray *array = [NSArray arrayWithContentsOfURL:url];
    
    NSMutableArray *arrayM = [NSMutableArray array];
    
    //把字符串转换成一个类
    Class clz = NSClassFromString(className);
    
    for (NSDictionary *dict in array) {
        NSObject *obj = [[clz alloc]init];
        [obj setValuesForKeysWithDictionary:dict];
        
        [arrayM addObject:obj];
    }
    return arrayM.copy;
}
@end
