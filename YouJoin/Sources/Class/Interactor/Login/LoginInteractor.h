//
//  LoginInteractor.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginInteractor : NSObject

- (void)loginWithUsername:(NSString *)username password:(NSString *)password success:(void(^)(void))success failure:(void(^)(NSString *errorTitle))failure;

@end
