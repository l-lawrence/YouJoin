//
//  LoginInteractor.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "LoginInteractor.h"
#import "DYJNetworkManager.h"

@implementation LoginInteractor

- (void)loginWithUsername:(NSString *)username password:(NSString *)password success:(void (^)(void))success failure:(void (^)(NSString *))failure {
    if (username.length && password.length) {
        [DYJNetworkManager post:@"signin.php" params:@{@"user_name": username, @"user_password": password} success:^(id responseDict) {
            if (success && [responseDict isKindOfClass:[NSDictionary class]] && [[responseDict valueForKey:@"result"] isEqualToString:@"success"]) {
                success();
            } else {
                failure(@"登录失败");
            }
        } failure:^(NSError *error) {
            if (failure) {
                failure(error.description);
            }
        }];
    }
}

@end
