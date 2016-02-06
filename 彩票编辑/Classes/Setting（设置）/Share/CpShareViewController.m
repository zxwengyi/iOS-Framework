//
//  CpShareViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/6.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpShareViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"

#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
#import "testViewController.h"
#import "CpShareViewController.h"
@interface CpShareViewController ()

@end

@implementation CpShareViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    //第0组数据
    [self addGroup0];
    
}
-(void)addGroup0{
    
    //        第0组
    
    CpSettingArrowItem *mai = [CpSettingArrowItem itemWithIcon:@"MailShare" title:@"邮件分享"];
    
    CpSettingItem *sms = [CpSettingArrowItem itemWithIcon:@"SmsShare" title:@"短信分享"];
    CpSettingItem *weibo = [CpSettingArrowItem itemWithIcon:@"WeiboSina" title:@"微博分享"];
    
    CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
    group0.items = @[mai,sms,weibo];
    
    [self.dateList addObject:group0];
}


@end
