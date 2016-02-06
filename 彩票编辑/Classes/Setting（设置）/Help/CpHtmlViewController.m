//
//  CpHtmlViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpHtmlViewController.h"
#import "CpHtml.h"
@interface CpHtmlViewController () <UIWebViewDelegate>

@end

@implementation CpHtmlViewController
-(void)loadView{
    
    self.view = [[UIWebView alloc] init];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *cancle = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancle)];
    self.navigationItem.leftBarButtonItem = cancle;
    
    UIWebView *webView = (UIWebView *)self.view;
//    加载资源文件
    NSURL *url =[[NSBundle mainBundle] URLForResource:_html.html withExtension:nil];
    
    NSURLRequest *request =[[NSURLRequest alloc]initWithURL:url];
    [webView loadRequest:request];
    
//    用代理监听网页加载完毕
    webView.delegate = self;
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@';",_html.ID];
    [webView stringByEvaluatingJavaScriptFromString:js];


}
-(void)cancle{

//返回到上一个控制器
    [self dismissViewControllerAnimated:YES completion:nil];
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
