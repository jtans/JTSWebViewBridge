//
//  HomeViewController.m
//  ExampleApp-iOS
//
//  Created by tansheng on 2018/7/20.
//  Copyright © 2018年 Marcus Westin. All rights reserved.
//

#import "ExampleHomeViewController.h"
#import "ExampleUIWebViewController.h"

@interface ExampleHomeViewController ()

@end

@implementation ExampleHomeViewController
{
    UIButton *_btn;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_btn setTitle:@"goto web" forState:UIControlStateNormal];
    [_btn sizeToFit];
    _btn.center = self.view.center;
    [_btn addTarget:self action:@selector(gotoweb) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
}

- (void)gotoweb {
    UIViewController *vc = [ExampleUIWebViewController new];
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
