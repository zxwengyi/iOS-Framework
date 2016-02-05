//
//  CpScoreNoticeViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpScoreNoticeViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"

#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
#import "CpSettingLabelItem.h"
#import "CpSaveTool.h"
@interface CpScoreNoticeViewController ()
@property(nonatomic, strong)CpSettingLabelItem *start;

@property(nonatomic,strong)CpSettingLabelItem *stop;
@end

@implementation CpScoreNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //加载0组数据
    [self addGroup0];
    //加载1组数据
    [self addGroup1];
    //加载2组数据
    [self addGroup2];
   }
-(void)addGroup0{
    
    //        第0组
    CpSettingSwicthItem *notice = [CpSettingSwicthItem itemWithIcon:nil title:@"提醒我关注比赛"];
    
    CpSettingGroup *group = [[CpSettingGroup alloc] init];
    group.items = @[notice];
    
    group.footer = @"sggajhsjhhj";
    [self.dateList addObject:group];
}
-(void)addGroup1{
    //        第1组
    CpSettingLabelItem *start = [CpSettingLabelItem itemWithIcon:nil title:@"开始时间"];
    _start =start;
       if (!start.text) {
        start.text = @"00:00";
    }
    start.option =^{
    
        UITextField *textField = [[UITextField alloc] init];
        UIDatePicker *datePicker = [[UIDatePicker alloc]init];
//        设置模式
        datePicker.datePickerMode = UIDatePickerModeTime;
//        设置地区
        datePicker.locale =[NSLocale localeWithLocaleIdentifier:@"zh"];
//        创建日期格式
        NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
        dateF.dateFormat = @"HH:mm";
//        设置日期
        datePicker.date =[dateF dateFromString:@"00:00"];
//        监听UIDatePicker点击
        [datePicker addTarget:self action:@selector(valueChuange:) forControlEvents:UIControlEventValueChanged];
//        设置键盘
        textField.inputView =datePicker;
        [self.view addSubview:textField];
        [textField becomeFirstResponder];
    
    };
    
    CpSettingGroup *group = [[CpSettingGroup alloc] init];
    group.items = @[start];
    group.header = @"sgga2323efd";
    [self.dateList addObject:group];
}
-(void)valueChuange:(UIDatePicker *)datePicker{
//    创建日期格式
    NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
    dateF.dateFormat = @"HH:mm";
//    赋值
    _start.text = [dateF stringFromDate:datePicker.date];
//    刷新界面
    [self.tableView reloadData];
}
-(void)addGroup2{
    //        第1组
    CpSettingLabelItem *stop = [CpSettingLabelItem itemWithIcon:nil title:@"结束时间"];
    _stop = stop;
    if (!stop.text) {
        stop.text = @"00:00";
    }
    stop.option =^{
        
        UITextField *textField = [[UITextField alloc] init];
        UIDatePicker *datePicker = [[UIDatePicker alloc]init];
        //        设置模式
        datePicker.datePickerMode = UIDatePickerModeTime;
        //        设置地区
        datePicker.locale =[NSLocale localeWithLocaleIdentifier:@"zh"];
        //        创建日期格式
        NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
        dateF.dateFormat = @"HH:mm";
        //        设置日期
        datePicker.date =[dateF dateFromString:@"00:00"];
        //        监听UIDatePicker点击
        [datePicker addTarget:self action:@selector(valueChuangeStop:) forControlEvents:UIControlEventValueChanged];
        
        //        设置键盘
        textField.inputView =datePicker;
        [self.view addSubview:textField];
        [textField becomeFirstResponder];
        
    };
    


    CpSettingGroup *group = [[CpSettingGroup alloc] init];
    group.items = @[stop];
    [self.dateList addObject:group];

}
-(void)valueChuangeStop:(UIDatePicker *)datePicker{
    //    创建日期格式
    NSDateFormatter *dateF = [[NSDateFormatter alloc] init];
    dateF.dateFormat = @"HH:mm";
    //    赋值
    _stop.text = [dateF stringFromDate:datePicker.date];
    //    刷新界面
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
