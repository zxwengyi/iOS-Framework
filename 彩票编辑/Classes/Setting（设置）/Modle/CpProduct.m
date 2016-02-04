//
//  CpProduct.m
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpProduct.h"
/**
 "title": "网易电影票",
 "id": "com.netease.movie",
 "url": "http://itunes.apple.com/app/id583784224?mt=8",
 "icon": "movie@2x.png",
 "customUrl": "movieticket163"
 
 */

@implementation CpProduct
+(instancetype)productWithDict:(NSDictionary *)dict
{
    CpProduct *product = [[CpProduct alloc] init];
    product.title = dict[@"title"];
    
    product.ID = dict[@"id"];

    product.url = dict[@"url"];

    product.icon = dict[@"icon"];

    product.customUrl = dict[@"customUrl"];

    return product;

}
-(void)setIcon:(NSString *)icon{
    _icon = [icon stringByReplacingOccurrencesOfString:@"@2x.png" withString:@""];

}
@end
