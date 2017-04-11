//
//  ViewController1104_2.m
//  LoginForm
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "ViewController1104_2.h"
#import "ViewController1104.h"

@interface ViewController1104_2 ()

@end

@implementation ViewController1104_2

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //self.view.backgroundColor = UIColor.darkGrayColor;
    //self.tabBarItem.title = @"Second";
    //self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    
     self.navigationItem.title = @"second screen";
    
    
    UIButton *btn = [[UIButton alloc]init];
    CGRect bounds = self.view.bounds;
    
    double rootWidth = bounds.size.width;
    double rootHeight = bounds.size.height;
    double heightStep = 20;
    double width = bounds.size.width /10;
    
    btn.frame = CGRectMake(rootWidth / 2, rootHeight / 2, 100, 40);
    btn.backgroundColor = UIColor.darkGrayColor;
    
    [btn setTitle:@"<-" forState:UIControlStateNormal];
    //[btn setTitleColor:<#(nullable UIColor *)#> forState:<#(UIControlState)#>:<#(nullable NSString *)#> forState:<#(UIControlState)#>]
    
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents: UIControlEventTouchUpInside];
    //self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    
    
    
}

-(void) buttonClick:(UIButton *)button{
    
    [self.navigationController popViewControllerAnimated:YES];
    
    //ViewController1104 *vc = [ViewController1104 new];
    //[self.navigationController pushViewController:vc animated:YES];
}

    
    // Do any additional setup after loading the view.

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
