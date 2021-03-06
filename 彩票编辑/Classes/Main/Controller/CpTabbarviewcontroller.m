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
////    移除原来的按钮
//    [self.tabBar removeFromSuperview];
//    创建button
    CpTabbar* tabBar = [[CpTabbar alloc] init];
//    应为点击系统自动隐藏时只能隐藏系统自带的tabbar，所以必须添加到系统的tabbar上
    tabBar.frame =self.tabBar.bounds;
    [self.tabBar addSubview:tabBar];
//    tabBar.block = ^(int selectedIndex){
//        self.selectedIndex = selectedIndex;
//    };
    tabBar.delegate = self;
//    添加底部按钮
    NSString *imageName = nil;
    NSString *selimageName = nil;
    for (int i=0; i<self.childViewControllers.count; i++) {

        imageName =[NSString stringWithFormat:@"TabBar%d",i+1];
        selimageName =[NSString stringWithFormat:@"TabBar%dSel",i+1];
        [tabBar addTabBarButtonWithName:imageName selName:selimageName];
        
    }
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
