//
//  CpAboutViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/6.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpAboutViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"
#import "CpSettingArrowItem.h"
#import "CpAboutHeaderView.h"
@interface CpAboutViewController ()

@end

@implementation CpAboutViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    //加载0组数据
    [self addGroup0];
    self.tableView.tableHeaderView = [CpAboutHeaderView aboutHeaderView];
}
-(void)addGroup0{
    
    //        第0组
    CpSettingArrowItem *score = [CpSettingArrowItem itemWithIcon:nil title:@"评分支持"];
    
    CpSettingItem *tel = [CpSettingArrowItem itemWithIcon:nil title:@"客服电话"];
    tel.subTitle = @"020-2284345595";
    CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
    group0.items = @[score,tel];
    [self.dateList addObject:group0];
}
@end
