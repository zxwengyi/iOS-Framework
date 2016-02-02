//
//  CpTabbar.h
//  彩票编辑
//
//  Created by chan on 16/2/2.
//  Copyright © 2016年 chan. All rights reserved.
//

#import <UIKit/UIKit.h>
//定义一个block：block保存一段代码，再恰当的位置调用
//typedef void(^CpTabbarBlock)(int selectedIndex);
@class CpTabbar;
@protocol CpTabbarDelegate <NSObject>
//@optional
-(void)tabBar:(CpTabbar*)tabBar didseletedIndex:(int)index;

@end
@interface CpTabbar : UIView
//相当于有个小弟
//@property(nonatomic ,copy) CpTabbarBlock block;
@property(nonatomic ,weak)id<CpTabbarDelegate> delegate;

-(void) addTabBarButtonWithName:(NSString *) Name selName:(NSString *)selName;
@end
