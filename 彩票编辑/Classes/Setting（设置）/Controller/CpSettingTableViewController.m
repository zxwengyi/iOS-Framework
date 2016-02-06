//
//  CpSettingTableViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingTableViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"

#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
#import "testViewController.h"
#import "MBProgressHUD.h"
#import "CpProductViewController.h"
#import "CpPushNoticeController.h"
#import "CpHelpViewController.h"
#import "CpShareViewController.h"
#import "CpAboutViewController.h"
@interface CpSettingTableViewController ()

@end

@implementation CpSettingTableViewController
-(void)viewDidLoad{

    [super viewDidLoad];
//第0组数据
    [self addGroup0];
//第1组数据
    [self addGroup1];

}
-(void)addGroup1{
    //        第一组
    CpSettingItem *newVersion = [CpSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
    
    newVersion.option =^{
        //            显示蒙版
        MBProgressHUD *hud=[MBProgressHUD showHUDAddedTo:self.view animated:YES];
        
        
        [hud hide:YES afterDelay:1];
        //           提示用户
        //            UIAlertController *alert = [[UIAlertController alloc] init];
        //            alert = [UIAlertController alertControllerWithTitle:@"有更新版本" message:@"立即更新" preferredStyle: UIAlertControllerStyleAlert
        //             ];
        
        UIAlertView *alert = [[UIAlertView  alloc] initWithTitle:@"有更新版本" message:nil delegate: nil cancelButtonTitle:@"取消" otherButtonTitles:@"立即更新", nil];
        [alert show];
        
    };
    CpSettingItem *help = [CpSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destVcClass:[CpHelpViewController class]];
    CpSettingArrowItem *Share = [CpSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享"destVcClass:[CpShareViewController class] ];
    CpSettingArrowItem *Message = [CpSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看信息"destVcClass:[testViewController class] ];
    CpSettingArrowItem *Netease = [CpSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐"destVcClass:[CpProductViewController class] ];
    CpSettingArrowItem *About = [CpSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"destVcClass:[CpAboutViewController class] ];
    
    CpSettingGroup *group1 = [[CpSettingGroup alloc] init];
    group1.items = @[newVersion ,help,Share,Message,Netease,About];
    group1.header = @"是这样";
    group1.footer =@"13456";
    

    
    [self.dateList addObject:group1];
}


-(void)addGroup0{

    //        第0组

    CpSettingArrowItem *pushNotice = [CpSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒"destVcClass:[CpPushNoticeController class] ];
    
    CpSettingItem *yaoyiyao = [CpSettingSwicthItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    CpSettingItem *sound = [CpSettingSwicthItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    
    CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
    group0.items = @[pushNotice ,yaoyiyao,sound];

    [self.dateList addObject:group0];
}
@end
