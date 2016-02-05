//
//  CpPushNoticeController.m
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpPushNoticeController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"

#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
#import "CpScoreNoticeViewController.h"

@interface CpPushNoticeController ()


@end

@implementation CpPushNoticeController

-(void)viewDidLoad{
    [super viewDidLoad];
    
//加载0组数据
    [self addGroup0];
}
-(void)addGroup0{

    //        第0组
    CpSettingArrowItem *push = [CpSettingArrowItem itemWithIcon:nil title:@"开奖号码推送" destVcClass:nil ];
    
    CpSettingItem *anim = [CpSettingArrowItem itemWithIcon:nil title:@"中奖动画"];
    
    CpSettingItem *score = [CpSettingArrowItem itemWithIcon:nil title:@"比分直播提醒"destVcClass: [CpScoreNoticeViewController class]];
    
    CpSettingItem *timer = [CpSettingArrowItem itemWithIcon:nil title:@"购彩定时提醒"];
    
    
    CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
    group0.items = @[push ,anim,score,timer];
    [self.dateList addObject:group0];
}
@end
