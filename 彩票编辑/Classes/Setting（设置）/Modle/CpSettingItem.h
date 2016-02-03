//
//  CpSettingItem.h
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CpSettingItem : NSObject

@property(nonatomic,copy) NSString *title;

@property(nonatomic,copy) NSString *icon;
//创建一个工厂方法
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
