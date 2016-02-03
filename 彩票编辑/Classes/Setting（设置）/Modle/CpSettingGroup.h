//
//  CpSettingGroup.h
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CpSettingGroup : NSObject
@property(nonatomic , strong)NSArray *items;

@property(nonatomic ,copy)NSString *header;

@property(nonatomic ,copy)NSString *footer;

@end
