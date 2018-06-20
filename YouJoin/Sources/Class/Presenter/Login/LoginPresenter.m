//
//  LoginPresenter.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginInteractor.h"

#import "NSString+MD5.h"

@interface LoginPresenter()
@property (nonatomic, strong) LoginInteractor *interactor;
@end

@implementation LoginPresenter

- (instancetype)init {
    if (self = [super init]) {
        self.interactor = [[LoginInteractor alloc]init];
    }
    return self;
}

- (void)didClickLoginBtnWithUsername:(NSString *)username password:(NSString *)password {
    [self.interface showLoading];
    [self.interactor loginWithUsername:username password:[password md5]  success:^{
        [self.interface showSuccess:@"登录成功"];
    } failure:^(NSString *errorTitle) {
        [self.interface showFailure:errorTitle];
    }];
}

@end
