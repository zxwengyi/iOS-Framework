//
//  CpSettingCell.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpSettingCell.h"
#import "CpSettingItem.h"
#import "CpSettingArrowItem.h"
#import "CpSettingSwicthItem.h"
@interface CpSettingCell()

@property(nonatomic, strong)UISwitch *switchView;

@property(nonatomic, strong)UIImageView *imgView;

@end
@implementation CpSettingCell
-(UIImageView *)imgView{
    if (_imgView==nil) {
        _imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _imgView;
}

-(UISwitch *)switchView{

    if (_switchView==nil) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}
-(void)setItem:(CpSettingItem *)item{
    _item = item;
//    设置cell的子控件数据
    [self setUpDate];
//    设置右边跳转视图
    [self setUpAccessoryView];
   
}
//设置数据
-(void)setUpDate{

   
    self.imageView.image = [UIImage imageNamed:_item.icon];
    self.textLabel.text = _item.title;
}
//设置跳转类型
-(void)setUpAccessoryView{

    if ([_item isKindOfClass:[CpSettingArrowItem class]]) {//箭头类型
//        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.accessoryView = self.imgView;
         self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if ([_item isKindOfClass:[CpSettingSwicthItem class]]){//swicth类型
        
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else{
        self.accessoryView = nil;
         self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
    

}
+(instancetype)cellWithTableView:(UITableView *)tableView{

    static NSString *ID = @"cell";
   CpSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[CpSettingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;

}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
