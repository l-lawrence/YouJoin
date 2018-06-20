//
//  WelcomePage.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "WelcomePage.h"
#import "LoginPage.h"
#import "RegisterPage.h"

#import "DYJLoginButton.h"

@interface WelcomePage ()

@end

@implementation WelcomePage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = NO;
}

- (void)setupView {
    CGFloat buttonW = screenW / 3;
    CGFloat buttonH = buttonW / 3;
    
    DYJLoginButton *loginBtn = [DYJLoginButton buttonWithTitle:@"Login" backgroundColor:rgba(30, 149, 229, 1) titleColor:[UIColor whiteColor] frame:CGRectMake((screenW - buttonW) / 2, screenH * 0.6, buttonW, buttonH) cornerRadius:buttonH / 3];
    [loginBtn addTarget:self action:@selector(didClickLoginBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
    
    DYJLoginButton *signBtn = [DYJLoginButton buttonWithTitle:@"Register" backgroundColor:[UIColor lightGrayColor] titleColor:[UIColor whiteColor] frame:CGRectMake(loginBtn.frame.origin.x, CGRectGetMaxY(loginBtn.frame) + 30, buttonW, buttonH) cornerRadius:buttonH / 3];
    [signBtn addTarget:self action:@selector(didClickSignBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:signBtn];
}

- (void)didClickLoginBtn {
    [self.navigationController pushViewController:[LoginPage new] animated:YES];
}

- (void)didClickSignBtn {
    [self.navigationController pushViewController:[RegisterPage new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
