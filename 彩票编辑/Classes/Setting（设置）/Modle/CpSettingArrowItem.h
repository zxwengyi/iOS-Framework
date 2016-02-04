//
//  CpSettingArrowItem.h
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingItem.h"

@interface CpSettingArrowItem : CpSettingItem
//跳转控制器的类名
@property(nonatomic ,assign)Class destVcClass;
+(instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class) destVcClass;
@end
