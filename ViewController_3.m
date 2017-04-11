//
//  ViewController_3.m
//  LoginForm
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "ViewController_3.h"

@interface ViewController_3 ()

@end

@implementation ViewController_3

-(instancetype)init{
    self = [super init];
    if (self){
        //self.navigationItem.title = @"first screen";
        self.tabBarItem.title = @"ThirdVC";
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.tabBarItem.title = @"ThirdVC";
    self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    
    UIButton *btn = [[UIButton alloc]init];
    CGRect bounds = self.view.bounds;
    
    double rootWidth = bounds.size.width;
    double rootHeight = bounds.size.height;
    double heightStep = 20;
    double width = bounds.size.width /10;
    
    [self.view addSubview:btn];
    
    btn.frame = CGRectMake(rootWidth / 2, rootHeight / 2, 100, 40);
    btn.backgroundColor = UIColor.darkGrayColor;
    
    [btn setTitle:@"->" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents: UIControlEventTouchUpInside];
    
}


-(void) buttonClick:(UIButton *)button{
    
    [self.navigationController pushViewController:vc animated:YES];
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
