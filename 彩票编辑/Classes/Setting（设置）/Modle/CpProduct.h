//
//  CpProduct.h
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 "title": "网易电影票",
 "id": "com.netease.movie",
 "url": "http://itunes.apple.com/app/id583784224?mt=8",
 "icon": "movie@2x.png",
 "customUrl": "movieticket163"
 
 */
@interface CpProduct : NSObject

@property(nonatomic,copy)NSString *title;

@property(nonatomic,copy)NSString *ID;

@property(nonatomic,copy)NSString *url;

@property(nonatomic,copy)NSString *icon;

@property(nonatomic,copy)NSString *customUrl;

+(instancetype)productWithDict:(NSDictionary *)dict;

@end
