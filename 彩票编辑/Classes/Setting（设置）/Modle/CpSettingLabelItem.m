//
//  CpSettingLabelItem.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingLabelItem.h"
#import "CpSaveTool.h"
@implementation CpSettingLabelItem
-(void)setText:(NSString *)text{
    _text = text;
    [CpSaveTool setObject:text forKey:self.title];
}
-(void)setTitle:(NSString *)title{
    [super setTitle:title];
    _text =[CpSaveTool objectForKey:self.title];

}
@end
