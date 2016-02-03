//
//  CpSettingItem.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingItem.h"

@implementation CpSettingItem
//实现工厂方法
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title{
    CpSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    
    return item;
}
@end
