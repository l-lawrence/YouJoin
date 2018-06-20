//
//  RegisterPage.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "RegisterPage.h"

@interface RegisterPage ()

@end

@implementation RegisterPage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *backgroundView = [UIView new];
    backgroundView.frame = CGRectMake(100, 100, 30, 30);
    backgroundView.backgroundColor = [UIColor redColor];
    [self.view addSubview:backgroundView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
