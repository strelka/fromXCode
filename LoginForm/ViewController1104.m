//
//  ViewController1104.m
//  LoginForm
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "ViewController1104.h"
#import "ViewController1104_2.h"

@interface ViewController1104()

@end

@implementation ViewController1104

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init{
    self = [super init];
    if (self){
        self.navigationItem.title = @"first screen";
        //self.tabBarItem.title = @"FirstVC";
        //    self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.lightGrayColor;
    self.tabBarItem.title = @"FirstVC";
    
    UIButton *btn = [[UIButton alloc]init];
    CGRect bounds = self.view.bounds;
    
    double rootWidth = bounds.size.width;
    double rootHeight = bounds.size.height;
    double heightStep = 20;
    double width = bounds.size.width /10;
    
    btn.frame = CGRectMake(rootWidth / 2, rootHeight / 2, 100, 40);
    btn.backgroundColor = UIColor.darkGrayColor;
    
    [btn setTitle:@"->" forState:UIControlStateNormal];
    //[btn setTitleColor:<#(nullable UIColor *)#> forState:<#(UIControlState)#>:<#(nullable NSString *)#> forState:<#(UIControlState)#>]
    
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents: UIControlEventTouchUpInside];
        //self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    
    
    
}

-(void) buttonClick:(UIButton *)button{

    ViewController1104_2 *vc = [ViewController1104_2 new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
