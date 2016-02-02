//
//  CpTabbarviewcontroller.m
//  彩票编辑
//
//  Created by chan on 16/2/2.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpTabbarviewcontroller.h"
#import "CpTabbar.h"
@interface CpTabbarviewcontroller ()<CpTabbarDelegate>

@end

@implementation CpTabbarviewcontroller

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    创建tabar
    
    // Do any additional setup after loading the view.
//    移除原来的按钮
    [self.tabBar removeFromSuperview];
//    创建button
    CpTabbar* tabBar = [[CpTabbar alloc] init];
    tabBar.frame =self.tabBar.frame;
    [self.view addSubview:tabBar];
//    tabBar.block = ^(int selectedIndex){
//        self.selectedIndex = selectedIndex;
//    };
    tabBar.delegate = self;
}
//实现代理方法
-(void)tabBar:(CpTabbar *)tabBar didseletedIndex:(int)index{

    self.selectedIndex = index;
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
