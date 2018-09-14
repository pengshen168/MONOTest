//
//  MNBaseTabBarController.m
//  MONO
//
//  Created by 万启鹏 on 2018/9/14.
//  Copyright © 2018年 万启鹏. All rights reserved.
//

#import "MNBaseTabBarController.h"

#import "RecommendVC.h"
#import "DiscoverVC.h"
#import "CommunityVC.h"
#import "MineVC.h"

#import "MNNavigationController.h"
#import <UIView+Sizes.h>
#import "GGStartMovieHelper.h"

@interface MNBaseTabBarController ()

@end

@implementation MNBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RecommendVC *firstViewController = [[RecommendVC alloc] init];
    MNNavigationController *firstNavigationController = [[MNNavigationController alloc]
                                                         initWithRootViewController:firstViewController];
    firstNavigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.13 green:0.13 blue:0.14 alpha:1];
    
    
    firstNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab-recommend"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tab-recommend-active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    firstNavigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, -10, 0);
    
    DiscoverVC *secondViewController = [[DiscoverVC alloc] init];
    MNNavigationController *secondNavigationController = [[MNNavigationController alloc]
                                                          initWithRootViewController:secondViewController];
    secondNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab-explore"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tab-explore-active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    secondNavigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, -10, 0);
    
    CommunityVC *thirdViewController = [[CommunityVC alloc] init];
    MNNavigationController *thirdNavigationController = [[MNNavigationController alloc]
                                                         initWithRootViewController:thirdViewController];
    thirdNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab-social"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tab-social-active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    thirdNavigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, -10, 0);
    
    MineVc *fourthViewController = [[MineVc alloc] init];
    MNNavigationController *fourthNavigationController = [[MNNavigationController alloc]
                                                          initWithRootViewController:fourthViewController];
    
    
    
    fourthNavigationController.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:@"tab-mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"tab-mine-active"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    fourthNavigationController.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, -10, 0);
    
    
    [self setTabbarApperence];
    [self setViewControllers:@[firstNavigationController,secondNavigationController,thirdNavigationController,fourthNavigationController]];
    
}


-(void)setTabbarApperence{
    UITabBar *tabBarAppearance = [UITabBar appearance];
    [tabBarAppearance setShadowImage:[UIImage new]];
    [tabBarAppearance setBackgroundImage:[UIImage imageNamed:@"tab_bg"]];
    
}


@end
