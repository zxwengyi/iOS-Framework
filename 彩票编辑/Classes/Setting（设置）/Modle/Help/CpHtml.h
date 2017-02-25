//
//  CpHtml.h
//  彩票编辑
//
//  Created by chan on 16/2/5.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 "title" : "如何购彩？",
 "html" : "help.html",
 "id" : "howtobuy"
 */
@interface CpHtml : NSObject
@property(nonatomic,copy)NSString *title;

@property(nonatomic,copy)NSString *ID;

@property(nonatomic,copy)NSString *html;

+(instancetype)htmlWithDict:(NSDictionary *)dict;

@end
