//
//  CpProductCell.m
//  彩票编辑
//
//  Created by chan on 16/2/4.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "CpProductCell.h"
#import "CpProduct.h"
@interface CpProductCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *label;


@end
@implementation CpProductCell
//设置图片为圆角
-(void)awakeFromNib{

    _imageView.layer.cornerRadius = 10;
    _imageView.clipsToBounds =YES;
}
-(void)setProduct:(CpProduct *)product{
    _product =product;
    
    _imageView.image = [UIImage imageNamed:product.icon];
    _label.text = product.title;

}
@end
