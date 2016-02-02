//
//  CpTabbar.m
//  彩票编辑
//
//  Created by chan on 16/2/2.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpTabbar.h"

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
    if (self) {
//        添加按钮
        [self addButtons];
    }
    
    return self;

}
//创建button  
-(void)addButtons{
    NSString *imageName = nil;
     NSString *selimageName = nil;
    for (int i = 0; i<5; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        设置按钮的图片
        imageName =[NSString stringWithFormat:@"TabBar%d",i+1];
         selimageName =[NSString stringWithFormat:@"TabBar%dSel",i+1];
       UIImage *image = [UIImage imageNamed:imageName];
         UIImage *selimage = [UIImage imageNamed:selimageName];
        [btn setBackgroundImage:image forState:UIControlStateNormal];
        [btn setBackgroundImage:selimage forState:UIControlStateHighlighted];
        [self addSubview:btn];
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
    }
}

@end
