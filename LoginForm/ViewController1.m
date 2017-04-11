//
//  ViewController1.m
//  LoginForm
//
//  Created by iOS-School-1 on 11.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController1

-(instancetype)init{
    self = [super init];
    if (self){
        self.navigationItem.title = @"Table View";
    }
    return self;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    UITableView *tableView = [UITableView new];
    tableView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.tableFooterView = [UIView new];
    
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;

}

-(UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = UIColor.redColor;
    vc.navigationItem.title =[NSString stringWithFormat:@"%ld", indexPath.row];
    [self.navigationController pushViewController:vc animated:YES];

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
