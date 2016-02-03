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

@interface CpSettingTableViewController ()
@property(nonatomic,strong) NSMutableArray *dateList;

@end

@implementation CpSettingTableViewController
-(NSMutableArray *)dateList{

    if (_dateList==nil) {
        _dateList = [NSMutableArray array];
//        第0组
        CpSettingItem *pushNotice = [CpSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒"];
        CpSettingItem *yaoyiyao = [CpSettingSwicthItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
        CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
        group0.items = @[pushNotice ,yaoyiyao];
        group0.header = @"dajhfffh";
        group0.footer =@"1222342";
//        第一组
        CpSettingItem *newVersion = [CpSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检查新版本"];
        CpSettingItem *help = [CpSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助"];
        CpSettingGroup *group1 = [[CpSettingGroup alloc] init];
        group1.items = @[pushNotice ,yaoyiyao];
        group1.header = @"是这样";
        group1.footer =@"13456";
        group1.items = @[newVersion,help];
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

@end
