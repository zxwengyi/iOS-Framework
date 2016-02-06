//
//  CpHelpViewController.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpHelpViewController.h"
#import "CpSettingItem.h"
#import "CpSettingGroup.h"

#import "CpSettingCell.h"
#import "CpSettingSwicthItem.h"
#import "CpSettingArrowItem.h"
#import "CpHtml.h"
#import "CpHtmlViewController.h"
#import "CpNavigationController.h"

@interface CpHelpViewController ()
@property(nonatomic, strong) NSMutableArray *htmls;
@end

@implementation CpHelpViewController

-(NSMutableArray *)htmls{
    if (_htmls == nil) {
        _htmls = [NSMutableArray array];
        //        解析jsons数据
        NSString *fileName = [[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
        NSData *date = [NSData dataWithContentsOfFile:fileName];
        NSMutableArray *jsonsArr = [NSJSONSerialization JSONObjectWithData:date options:NSJSONReadingMutableContainers error:nil];
        for (NSDictionary *dict in jsonsArr) {
            CpHtml *html =[CpHtml htmlWithDict:dict];
            [_htmls addObject:html];
        }
    }

    return _htmls;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addGroup0];
}
-(void)addGroup0{
    
    //        第0组
    NSMutableArray *items = [NSMutableArray array];
    
    for (CpHtml *html in self.htmls) {
        CpSettingArrowItem *item = [CpSettingArrowItem itemWithIcon:nil title:html.title destVcClass:nil];
        [items addObject:item];
    }
    
    CpSettingGroup *group0 = [[CpSettingGroup alloc] init];
    group0.items = items ;
    
    [self.dateList addObject:group0];
}
//重新tableView的点击方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
//取出没有行对应的Html模型
    CpHtml *html = self.htmls[indexPath.row];

    CpHtmlViewController *htmlVc = [[CpHtmlViewController alloc]init];
    htmlVc.title = html.title;
    htmlVc.html = html;
//    包装一个导航条
    CpNavigationController *nav = [[CpNavigationController alloc] initWithRootViewController:htmlVc];
    
    [self presentViewController:nav animated:YES completion:nil];


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
