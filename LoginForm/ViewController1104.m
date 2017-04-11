//
//  ViewController1104.m
//  LoginForm
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "ViewController1104.h"

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
        self.tabBarItem.title = @"FirstVC";
            self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.lightGrayColor;
    self.tabBarItem.title = @"FirstVC";
        self.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -6);
    
}
@end
