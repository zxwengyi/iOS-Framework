//
//  CpTitleButton.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpTitleButton.h"

@implementation CpTitleButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
//设置图标居中
-(void)awakeFromNib{
    self.imageView.contentMode = UIViewContentModeCenter;

}
//这里不能使用self.titleLabel，应为他会调用titleRectForContentRect：这个方法
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *dict = @{
                           NSFontAttributeName : [UIFont systemFontOfSize:19]
                           
                           };
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW =30;
    CGFloat imageX = contentRect.size.width-imageW;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
