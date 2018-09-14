//
//  MNNavigationController.m
//  MONO
//
//  Created by 万启鹏 on 2018/9/14.
//  Copyright © 2018年 万启鹏. All rights reserved.
//

#import "MNNavigationController.h"

@interface MNNavigationController ()

@end

@implementation MNNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.navigationBar.translucent = NO;

}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    // 设置返回按钮
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}




@end
