//
//  MNBaseModel.m
//  高仿MONO
//
//  Created by 徐茂怀 on 2018/4/20.
//  Copyright © 2018年 徐茂怀. All rights reserved.
//

#import "MNBaseModel.h"

@implementation Sort
@end

@implementation User
@end

@implementation Thumb
@end
@implementation Group
@end

@implementation MNBaseModel

+ (NSDictionary *)modelCustomPropertyMapper{
    return @{@"Id" : @"id",@"descrip":@"description"};
}
@end
