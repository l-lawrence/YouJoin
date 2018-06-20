//
//  LoginPage.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "LoginPage.h"
#import "DYJLoginTextField.h"
#import "DYJLoginButton.h"
#import "LoginPresenter.h"

@interface LoginPage ()<LoginInterface>
@property (nonatomic, strong) LoginPresenter *presenter;

@property (nonatomic,strong) DYJLoginTextField *usernameField;
@property (nonatomic,strong) DYJLoginTextField *passwordField;
@end

@implementation LoginPage

- (instancetype)init {
    if (self = [super init]) {
        self.presenter = [[LoginPresenter alloc]init];
        self.presenter.interface = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Login";
    
    [self setupView];
}

- (void)setupView {
    CGFloat fieldW = screenW - 80;
    CGFloat fieldH = 40;
    DYJLoginTextField *usernameField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake((screenW - fieldW) / 2, screenH * 0.5, fieldW, fieldH)];
    [self.view addSubview:usernameField];
    self.usernameField = usernameField;
    
    DYJLoginTextField *passwordField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(usernameField.frame), CGRectGetMaxY(usernameField.frame) + 5, fieldW, fieldH)];
    passwordField.secureTextEntry = YES;
    [self.view addSubview:passwordField];
    self.passwordField = passwordField;
    
    CGFloat buttonW = screenW / 3;
    CGFloat buttonH = buttonW / 3;
    
    DYJLoginButton *loginBtn = [DYJLoginButton buttonWithTitle:@"Login" backgroundColor:rgba(30, 149, 229, 1) titleColor:[UIColor whiteColor] frame:CGRectMake((screenW - buttonW) / 2, CGRectGetMaxY(passwordField.frame) + 20, buttonW, buttonH) cornerRadius:buttonH / 3];
    [loginBtn addTarget:self action:@selector(didClickLoginBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
}

#pragma mark - actions
- (void)didClickLoginBtn {
    [self.presenter didClickLoginBtnWithUsername:self.usernameField.text password:self.passwordField.text];
}

#pragma mark - interface
- (void)showLoading {
    [self showLoadingWithText:@"登录中..."];
}

- (void)showSuccess:(NSString *)text {
    [self successHudWithText:text];
}

- (void)showFailure:(NSString *)text {
    [self failureHudWithText:text];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
