//
//  RegisterPresenter.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/27.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "RegisterPresenter.h"
#import "RegisterInteractor.h"
#import "NSString+MD5.h"

@interface RegisterPresenter()

@property (nonatomic,strong) RegisterInteractor *interactor;

@end

@implementation RegisterPresenter

- (instancetype)init {
    if (self = [super init]) {
        self.interactor = [RegisterInteractor new];
    }
    return self;
}

- (void)didClickSignBtnWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email {
    [self.interface showLoading];
    [self.interactor registerWithUsername:username password:[password md5] email:email success:^{
        [self.interface showSuccess:@"注册成功"];
    } failure:^(NSString *errorTitle) {
        [self.interface showFailure:errorTitle];
    }];
}
@end
