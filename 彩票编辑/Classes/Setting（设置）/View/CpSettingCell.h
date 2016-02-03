//
//  CpSettingCell.h
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CpSettingItem;
@interface CpSettingCell : UITableViewCell
@property(nonatomic ,strong)CpSettingItem *item;

+(instancetype)cellWithTableView:(UITableView *)tableView;

@end
