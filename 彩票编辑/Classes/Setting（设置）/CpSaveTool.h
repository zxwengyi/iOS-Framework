//
//  CpSaveTool.h
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CpSaveTool : NSObject
//保存修改的数据
+(void)setObject:(nullable id)value forKey:(NSString *)defaultName;
//取出保存的数据
+(nullable id)objectForKey:(NSString *)defaultName;
@end
