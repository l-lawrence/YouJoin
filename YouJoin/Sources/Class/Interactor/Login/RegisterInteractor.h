//
//  RegisterInteractor.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/27.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegisterInteractor : NSObject
- (void)registerWithUsername:(NSString *)username password:(NSString *)password email:(NSString *)email success:(void (^)(void))success failure:(void (^)(NSString *))failure;
@end
