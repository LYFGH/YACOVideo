//
//  BaseTableViewCellLayout.h
//  packagesTest
//
//  Created by 李亚飞 on 2020/5/17.
//  Copyright © 2020 李亚飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTBaseDataModel.h"
NS_ASSUME_NONNULL_BEGIN
@class PTBaseDataModel;
@interface BaseTableViewCellLayout : NSObject
/// 数据模型
@property (nonatomic, strong) PTBaseDataModel *data;
/// 头部图片的尺寸
@property (nonatomic, readonly) CGRect headerRect;
/// 昵称的尺寸
@property (nonatomic, readonly) CGRect nickNameRect;
/// 视频尺寸
@property (nonatomic, readonly) CGRect videoRect;
/// 播放按钮的尺寸
@property (nonatomic, readonly) CGRect playBtnRect;
/// 下边标题尺寸
@property (nonatomic, readonly) CGRect titleLabelRect;
/// 挡板的尺寸
@property (nonatomic, readonly) CGRect maskViewRect;
/// 高度
@property (nonatomic, readonly) CGFloat height;
///是不是竖版
@property (nonatomic, readonly) BOOL isVerticalVideo;


/// 初始化数据
/// @param data 数据
- (instancetype)initWithData:(PTBaseDataModel *)data;


@end

NS_ASSUME_NONNULL_END
