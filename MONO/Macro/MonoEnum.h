//
//  MonoEnum.h
//  MONO
//
//  Created by 万启鹏 on 2018/9/14.
//  Copyright © 2018年 万启鹏. All rights reserved.
//

#ifndef MonoEnum_h
#define MonoEnum_h


typedef NS_ENUM(NSInteger,RecommendType){
    RecommendTypeTea,//早午茶
    RecommendTypeAttention,//我的关注
    RecommendTypeLike,//猜你喜欢
    RecommendTypeVideo,//视频
    RecommendTypeMusic,//音乐
    RecommendTypePicture//画册
};

typedef NS_ENUM(NSInteger,MeowType){
    MeowTypeMusic  = 8,//音乐
    MeowTypeRead = 4,//阅读
    MeowTypeReadThird = 5,//阅读(来自第三方)
    MeowTypeImages = 3,//多张图片
    MeowTypeImageBg = 2,//一张大图
    MeowTypeVideo = 7,//视频
    MeowTypeTea = 1,
    MeowTypePictures = 9
};

#endif /* MonoEnum_h */
