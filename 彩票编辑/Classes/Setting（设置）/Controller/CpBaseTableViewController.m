//
//  CpBaseTableViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpBaseTableViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"
#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
@interface CpBaseTableViewController ()

@end

@implementation CpBaseTableViewController

-(NSMutableArray *)dateList{
    if (_dateList==0) {
        _dateList = [NSMutableArray array];
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
        //        设置跳转控制器的title
        
        vc.title = item.title;
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    
}
-(void)viewDidLoad{
    [super viewDidLoad];

    self.tableView.contentInset=UIEdgeInsetsMake(-15, 0, 0, 0);

}


@end
