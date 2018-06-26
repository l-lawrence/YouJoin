//
//  DYJNetWorkManager.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/21.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "DYJNetworkManager.h"
#import <AFNetworking.h>

@implementation DYJNetworkManager

static AFHTTPSessionManager *manager;
#define baseUrl @"http://www.tekbroaden.com/youjoin-server/controllers/"

+ (AFHTTPSessionManager *)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:baseUrl]];
        manager.requestSerializer = [AFHTTPRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        [manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    });
    return manager;
}

+ (NSDictionary *)getFixDict:(NSData *)responseObject {
    NSMutableString *string = [[NSMutableString alloc]initWithString:[[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding]];
    NSData * data = [[string substringFromIndex:1] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data options:1 error:NULL];
    if (dict && [dict isKindOfClass:[NSDictionary class]]) {
        return dict;
    } else {
        return nil;
    }
}

+ (void)post:(NSString *)urlStr params:(id)params success:(successBlock)success failure:(failureBlock)failure {
    [[DYJNetworkManager sharedManager] POST:urlStr parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success && responseObject) {
            NSDictionary *responseDict = [self getFixDict:responseObject];
            NSLog(@"post %@, responseDict = %@", urlStr, responseDict);
            if ([[NSThread currentThread] isMainThread]) {
                success(responseDict);
            } else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    success(responseDict);
                });
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure && error) {
            NSLog(@"post %@, error = %@", urlStr, error);
            if ([[NSThread currentThread] isMainThread]) {
                failure(error);
            } else {
                dispatch_async(dispatch_get_main_queue(), ^{
                    failure(error);
                });
            }
        }
    }];
}
@end
