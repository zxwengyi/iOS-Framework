//
//  nextViewController.m
//  彩票编辑
//
//  Created by chan on 16/4/20.
//  Copyright © 2016年 chan. All rights reserved.
//

#import "nextViewController.h"

@interface nextViewController ()

@end

@implementation nextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIImage *imageq = [UIImage imageNamed:@"RedButton"];
    //设置位置和宽高
    CGFloat w = imageq.size.width;
    CGFloat h = imageq.size.height;
    NSLog(@"--------%f",imageq.size.height);
//   [imageq stretchableImageWithLeftCapWidth:imageq.size.width*0.5 topCapHeight:imageq.size.height*0.5];
    btn1.frame=CGRectMake(100, 330, w, h);
    //设置按钮的文字，状态有好几种常用的时Normal和Highlighted（点击时状态），可CMD+点击查看
    [btn1 setTitle:@"点我啊！" forState:UIControlStateNormal];
    //设置点击时的文本
    [btn1 setTitle:@"我被点了！" forState:UIControlStateHighlighted];
    //设置文字颜色
    [btn1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];

    [btn1 setBackgroundImage:imageq forState:UIControlStateNormal];
    [btn1 setBackgroundImage:[UIImage imageNamed:@"RedButtonPressed"] forState:UIControlStateHighlighted];

    [btn1 setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    //设置点击时按钮背景颜色，呃，完全不起作用，即无效果
    [btn1 setTintColor:[UIColor purpleColor]];
    //点击时按钮发光，就是在按钮中间发亮光，这个有效果
//    btn1.showsTouchWhenHighlighted=YES;
    //设置tag标签，唯一标记用，可用于分辨是哪个按钮控件
    btn1.tag=1;
    //设置背景颜色
//    btn1.backgroundColor=[UIColor redColor];
    
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //再增加一个按钮
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeContactAdd];
    btn2.frame=CGRectMake(30, 80, 300, 30);
    //这个增加联系人按钮其实也是一个矩形，和上面的一样，都是继承自UIControl，而后者又继承自UIView，所以是矩形
    //虽然按钮就一点点大，但点击整个矩形区域都是相当于点击按钮
    btn2.backgroundColor=[UIColor greenColor];
    //设置标签
    btn2.tag=2;
    //增加事件：和btn1调用同一个方法，但问题是我们如果需要区分是哪个按钮的话，就需要用到tag，并且把控件作为参数传递给btnClick
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //再增加一个最常用的Custom按钮，其他按钮自己尝试
    UIButton *btn3=[UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame=CGRectMake(30 , 150 , 300, 90);
    btn3.backgroundColor=[UIColor redColor];
    btn3.tag=3;
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    //设置图片背景被点击时变暗（但没有图片背景时则无效果）
    btn3.adjustsImageWhenHighlighted=YES;
    //所以，增加图片方式之一是增加背景图片，这个图片如小会被放大充满整个背景
    [btn3 setBackgroundImage:[UIImage imageNamed:@"logo.png"] forState:UIControlStateNormal];
    //还有一种增加图片的方式，是在按钮上面加而不是背景，这种方式不会缩放图片，而且会居中
    [btn3 setImage:[UIImage imageNamed:@"logo.png"] forState:UIControlStateNormal];
    //设置按钮文字，增加的文字会和setImage图片一并居中，图片在左边，文字紧随其后
    [btn3 setTitle:@"自定义按钮" forState:UIControlStateNormal];
    //如果需要重新排版这个图片和按钮文字的位置，则需要重写UIButton类里面的两个函数，点击UIButton可查看
    //- (CGRect)titleRectForContentRect:(CGRect)contentRect;文字相对于按钮的位置
    //- (CGRect)imageRectForContentRect:(CGRect)contentRect;图片相对于按钮的位置
    //第一步：可以重新定义一个UIButton类叫myButton，在.m里重写如下函数
    //- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    //	return CGRectMake(50, 25, 100, 40);
    //}
    //- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    //	return CGRectMake(150, 25, 40, 40);
    //}
    //第二步，在这个文件中引入myButton.h头文件，然后实例化btn3的时候，用myButton，而不用原始的UIButton
    //myButton相当于稍微定制了一下原生的UIButton，所以前者实例出得对象也就具有定制效果
    //这种方式仅对UIButtonTypeCustom有效，其他无效
    
    //把三个按钮显示出来
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)setBackgroundImage:(UIImage*)image
{
//    UIImage *imageq = [UIImage imageNamed:@"RedButton"];
}

- (void)setBackgroundImageByName:(NSString*)imageName
{
    [self setBackgroundImage:[UIImage imageNamed:imageName]];
}

//增加一个参数，即由原先的-(void)btnClick{}变成如下
//因为我们知道这里都是按钮对象，所以可以用(UIButton *)sender，但通常我们用通用指针id
-(void)btnClick:(id)sender{
    //把传递过来的控件参数转化成按钮
    UIButton *btn=(UIButton *)sender;
    //把btn.tag转化成整型
    NSLog(@"OMG,it is %i",(int)btn.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
