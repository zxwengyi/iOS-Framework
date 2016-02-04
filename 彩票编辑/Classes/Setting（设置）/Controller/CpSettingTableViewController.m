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

@interface CpSettingTableViewController ()
@property(nonatomic,strong) NSMutableArray *dateList;

@end

@implementation CpSettingTableViewController
-(NSMutableArray *)dateList{

    if (_dateList==nil) {
        _dateList = [NSMutableArray array];
//        第0组
//        跳转控制器
        CpSettingArrowItem *pushNotice = [CpSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒"destVcClass:[testViewController class] ];
        
        CpSettingItem *yaoyiyao = [CpSettingSwicthItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        CpSettingItem *sound = [CpSettingSwicthItem itemWithIcon:@"sound_Effect" title:@"声音效果"];

        CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
        group0.items = @[pushNotice ,yaoyiyao,sound];
        group0.header = @"dajhfffh";
        group0.footer =@"1222342";
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
        CpSettingItem *help = [CpSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destVcClass:[testViewController class]];
        CpSettingArrowItem *Share = [CpSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享"destVcClass:[testViewController class] ];
        CpSettingArrowItem *Message = [CpSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看信息"destVcClass:[testViewController class] ];
        CpSettingArrowItem *Netease = [CpSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐"destVcClass:[CpProductViewController class] ];
        CpSettingArrowItem *About = [CpSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于"destVcClass:[testViewController class] ];

        CpSettingGroup *group1 = [[CpSettingGroup alloc] init];
        group1.items = @[newVersion ,help,Share,Message,Netease,About];
        group1.header = @"是这样";
        group1.footer =@"13456";
        [_dateList addObject:group0];
        [_dateList addObject:group1];


    }
    return _dateList;
}

-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
//返回多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dateList.count;
}
//返回多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   CpSettingGroup *group = self.dateList[section];
    return group.items.count;

}
//返回怎样的cell
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    创建cell
    CpSettingCell *cell = [CpSettingCell cellWithTableView:tableView];
//    取出模型
    CpSettingGroup *group = self.dateList[indexPath.section];
    CpSettingItem *item = group.items[indexPath.row];
//    传递模型
    cell.item = item;
        return cell;

}
//头部标题
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
CpSettingGroup *group = self.dateList[section];
    return group.header;
}
//尾部标题
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    CpSettingGroup *group = self.dateList[section];
    return group.footer;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{    //   取出模型
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CpSettingGroup *group = self.dateList[indexPath.section];
    CpSettingItem *item = group.items[indexPath.row];
//    执行block操作
    if (item.option) {
        
        item.option();
    }
    if ([item isKindOfClass:[CpSettingArrowItem class]]) {//需要跳转的控制器
        CpSettingArrowItem *arrowitem = (CpSettingArrowItem *)item;
//        创建跳转的控制器
        UIViewController *vc = [[arrowitem.destVcClass alloc]init];
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }

}

@end
