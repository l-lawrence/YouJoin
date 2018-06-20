//
//  DYJNetWorkManager.h
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^successBlock)(id responseString);
typedef void (^failureBlock)(NSError *error);

@interface DYJNetworkManager : NSObject
+ (void)post:(NSString *)urlStr params:(id)params success:(successBlock)success failure:(failureBlock)failure;
@end
