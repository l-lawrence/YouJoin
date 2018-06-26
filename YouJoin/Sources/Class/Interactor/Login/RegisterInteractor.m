//
//  RegisterInteractor.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/27.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "RegisterInteractor.h"
#import "DYJNetworkManager.h"

@implementation RegisterInteractor

- (void)registerWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email success:(void (^)(void))success failure:(void (^)(NSString * errorTitle))failure {
    if (username.length && password.length) {
        [DYJNetworkManager post:@"signup.php" params:@{@"user_name": username, @"user_password": password, @"user_email": email} success:^(id response) {
            if (success && [response isKindOfClass:[NSDictionary class]] && [[response valueForKey:@"result"] isEqualToString:@"success"]) {
                success();
            } else {
                failure(@"注册失败");
            }
        } failure:^(NSError *error) {
            if (failure) {
                failure(error.description);
            }
        }];
    }
}

@end
