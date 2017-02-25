//
//  CpHtml.m
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpHtml.h"

@implementation CpHtml

+(instancetype)htmlWithDict:(NSDictionary *)dict{
    CpHtml *html = [[CpHtml alloc] init];

    html.title = dict[@"title"];
    
    html.ID = dict[@"id"];
    
    html.html = dict[@"html"];

    return html;
}
@end
