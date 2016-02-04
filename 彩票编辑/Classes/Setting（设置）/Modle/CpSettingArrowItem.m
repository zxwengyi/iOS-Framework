//
//  CpSettingArrowItem.m
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingArrowItem.h"

@implementation CpSettingArrowItem
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass{
//调用父类的方法赋值父类已经拥有的两个参数
    CpSettingArrowItem *item = [super itemWithIcon:icon title:title];
//    赋值自身带有的参数
     item.destVcClass =destVcClass;
    
    return item;
}
@end
