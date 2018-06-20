//
//  DYJTabbarController.m
//  YouJoin
//
//  Created by Lawrence on 2018/6/3.
//  Copyright © 2018年 Lawrence. All rights reserved.
//

#import "DYJTabbarController.h"
#import "DYJNavigationViewController.h"

#import "HomePage.h"

@interface DYJTabbarController ()

@end

@implementation DYJTabbarController

- (void)loadView {
    [super loadView];
    id homeNavi = [self naviControllerWithClassName:NSStringFromClass([HomePage class]) title:@"Home" image:nil];
    id homeNavi1 = [self naviControllerWithClassName:NSStringFromClass([HomePage class]) title:@"Home" image:nil];
    id homeNavi2 = [self naviControllerWithClassName:NSStringFromClass([HomePage class]) title:@"Home" image:nil];
    self.viewControllers = @[homeNavi, homeNavi1, homeNavi2];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (DYJNavigationViewController *)naviControllerWithClassName:(NSString *)className title:(NSString *)title image:(UIImage *)image {
    UIViewController *page = [NSClassFromString(className) new];
    NSAssert([page isKindOfClass:[UIViewController class]], @"tabbar naviController class name should be a UIViewController");
    page.title = title;
    page.tabBarItem.image = image;
    page.tabBarItem.title = title;
    DYJNavigationViewController *naviVC = [[DYJNavigationViewController alloc] initWithRootViewController:page];
    return naviVC;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
