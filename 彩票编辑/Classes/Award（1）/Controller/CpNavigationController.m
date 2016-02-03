//
//  CpNavigationController.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpNavigationController.h"
#define ios7 [[UIDevice currentDevice].systemVersion floatValue]>7.0

@interface CpNavigationController ()

@end

@implementation CpNavigationController
//第一次调用这个类或者之类时调用，并且只调用一次
+(void)initialize{
    if (self ==[CpNavigationController class]) {//保证只调用一次
//        设置全局导航条的外观
        [self setupNav];
//        设置全局barButton的外观
        [self setupBarButton];
    }


}
#warning 设置全局导航条的外观
+(void)setupNav{
    UINavigationBar *bar = [UINavigationBar appearance];
    UIImage * navImage= nil;
    //        配置导航条上的图片
    if (ios7) {
        navImage =[UIImage imageNamed:@"NavBar64"];
    }else
        navImage =[UIImage imageNamed:@"NavBar"];
    [bar setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
    //    设置导航栏上的文字颜色为白色
    NSDictionary *dict = @{
                           NSForegroundColorAttributeName :[UIColor whiteColor]
                           };
    [bar setTitleTextAttributes:dict];
//    设置导航栏上的主题颜色
    [bar setTintColor:[UIColor whiteColor]];

}
#warning 设置全局barButton的外观
+(void)setupBarButton{
    //    设置bubtton的背景图片
    UIBarButtonItem *buttonitem = [UIBarButtonItem appearance];
    [buttonitem setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [buttonitem setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    //    设置返回按钮的背景图片
    [buttonitem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [buttonitem setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//只要push出来的view都隐藏BottomBar
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;

    return [super pushViewController:viewController animated:animated];

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
