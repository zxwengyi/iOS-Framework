//
//  UIImage+Tool.m
//  彩票编辑
//
//  Created by chan on 16/2/3.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "UIImage+Tool.h"

@implementation UIImage (Tool)
+(instancetype)imageWithResizableImageName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName] ;
    image =[image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height*0.5];
    return image;
}
@end
