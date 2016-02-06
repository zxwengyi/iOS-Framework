//
//  CpAboutHeaderView.m
//  彩票编辑
//
//  Created by chan on 16/2/6.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpAboutHeaderView.h"

@implementation CpAboutHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (instancetype)aboutHeaderView
{
    return [[NSBundle mainBundle] loadNibNamed:@"CpAboutHeaderView" owner:nil options:nil][0];
}



@end
