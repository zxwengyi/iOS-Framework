//
//  CpSaveTool.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSaveTool.h"

@implementation CpSaveTool
//保存修改的数据
+(void)setObject:(nullable id)value forKey:(NSString *)defaultName{

    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

//取出保存的数据
+(nullable id)objectForKey:(NSString *)defaultName{
    
    return  [[NSUserDefaults standardUserDefaults]objectForKey:defaultName];


}

@end

