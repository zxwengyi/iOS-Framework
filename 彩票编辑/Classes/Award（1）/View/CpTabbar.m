//
//  CpTabbar.m
//  彩票编辑
//
//  Created by chan on 16/2/2.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpTabbar.h"
#import "CpTabBarButton.h"
@interface CpTabbar ()
@property(nonatomic ,weak) UIButton *selButton;

@end
@implementation CpTabbar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    return self;

}
//提供一个方法给外界添加按钮
-(void)addTabBarButtonWithName:(NSString *)Name selName:(NSString *)selName{
//        创建按钮
 CpTabBarButton *btn = [CpTabBarButton buttonWithType:UIButtonTypeCustom];
//        设置按钮的图片
    UIImage *image = [UIImage imageNamed:Name];
    UIImage *selimage = [UIImage imageNamed:selName];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:selimage forState:UIControlStateSelected];
    [self addSubview:btn];
//        监听按钮的点击
    [btn addTarget:self action:@selector(Clickbtn:) forControlEvents:UIControlEventTouchDown];
    //        默认情况选择第一个
}
//点击button是调用
-(void)Clickbtn:(UIButton *)button
{
    _selButton.selected = NO;
    button.selected = YES;
    _selButton = button;
//   切换控制器
//    if (_block) {
//        _block(button.tag);
//    }
    if ([_delegate respondsToSelector:@selector(tabBar:didseletedIndex:)]) {
        [_delegate tabBar:self didseletedIndex:(int)button.tag];
    }
}
//设置button的大小
-(void)layoutSubviews{
    [super layoutSubviews];
//    CGFloat btnW =self.bounds.size.width/(self.subviews.count-1);
       CGFloat btnW =self.bounds.size.width/self.subviews.count;
    CGFloat btnH = self.bounds.size.height;
    CGFloat btnY = 0;
    CGFloat btnx =0;
    for (int i=0; i<self.subviews.count; i++) {
        UIButton *btn = self.subviews[i];
        btnx = i*btnW;
        btn.frame =CGRectMake(btnx, btnY, btnW, btnH);
        btn.tag = i;
        if (i==0) {
            [self Clickbtn:btn];
        }
    }
}

@end
