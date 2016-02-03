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
