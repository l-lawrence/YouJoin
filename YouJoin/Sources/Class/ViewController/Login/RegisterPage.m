//
//  RegisterPage.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "RegisterPage.h"
#import "DYJLoginTextField.h"
#import "DYJLoginButton.h"

@interface RegisterPage ()<RegisterInterface>

@property (nonatomic,strong) DYJLoginTextField *usernameField;
@property (nonatomic,strong) DYJLoginTextField *passwordField;
@property (nonatomic,strong) DYJLoginTextField *passwordAgainField;
@property (nonatomic,strong) DYJLoginTextField *emailField;

@end

@implementation RegisterPage

- (instancetype)init {
    if (self = [super init]) {
        self.presenter = [RegisterPresenter new];
        self.presenter.interface = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Register";
    
    [self setupView];
}

- (void)setupView {
    CGFloat fieldW = screenW - 80;
    CGFloat fieldH = 40;
    CGFloat padding = 8;
    DYJLoginTextField *usernameField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake((screenW - fieldW) / 2, 100, fieldW, fieldH)];
    usernameField.placeholder = @"username";
    [self.view addSubview:usernameField];
    self.usernameField = usernameField;
    
    DYJLoginTextField *passwordField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(usernameField.frame), CGRectGetMaxY(usernameField.frame) + padding, fieldW, fieldH)];
    passwordField.placeholder = @"password";
    passwordField.secureTextEntry = YES;
    [self.view addSubview:passwordField];
    self.passwordField = passwordField;
    
    DYJLoginTextField *passwordAgainField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(passwordField.frame), CGRectGetMaxY(passwordField.frame) + padding, fieldW, fieldH)];
    passwordAgainField.placeholder = @"password Again";
    passwordAgainField.secureTextEntry = YES;
    [self.view addSubview:passwordAgainField];
    self.passwordAgainField = passwordAgainField;
    
    DYJLoginTextField *emailField = [[DYJLoginTextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(passwordAgainField.frame), CGRectGetMaxY(passwordAgainField.frame) + padding, fieldW, fieldH)];
    emailField.placeholder = @"e-mail";
    [self.view addSubview:emailField];
    self.emailField = emailField;
    
    CGFloat buttonW = screenW / 3;
    CGFloat buttonH = buttonW / 3;
    DYJLoginButton *signBtn = [DYJLoginButton buttonWithTitle:@"Sign up" backgroundColor:rgba(30, 149, 229, 1) titleColor:[UIColor whiteColor] frame:CGRectMake((screenW - buttonW) / 2, CGRectGetMaxY(emailField.frame) + 20, buttonW, buttonH) cornerRadius:buttonH / 3];
    [signBtn addTarget:self action:@selector(didClickSignBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:signBtn];
}

- (void)didClickSignBtn {
    [self.presenter didClickSignBtnWithUsername:self.usernameField.text password:self.passwordField.text email:self.emailField.text];
}

#pragma mark - interface
- (void)showLoading {
    [self showLoadingWithText:@"注册中..."];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
