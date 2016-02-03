//
//  CpLoginViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpLoginViewController.h"
#import "UIImage+Tool.h"
#import "CpSettingTableViewController.h"
@interface CpLoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *LoginBtn;

@end

@implementation CpLoginViewController
- (IBAction)setting:(id)sender {
//    创建setting控制器
    CpSettingTableViewController *SettingVc = [[CpSettingTableViewController alloc] init];
//    跳转到setting控制器
    [self.navigationController pushViewController:SettingVc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    拉伸登陆按钮图片
    [_LoginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButton"] forState:UIControlStateNormal];

    [_LoginBtn setBackgroundImage:[UIImage imageWithResizableImageName:@"RedButtonPressed"] forState:UIControlStateHighlighted];
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
