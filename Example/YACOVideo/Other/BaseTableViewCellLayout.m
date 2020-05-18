//
//  BaseTableViewCellLayout.m
//  packagesTest
//
//  Created by 李亚飞 on 2020/5/17.
//  Copyright © 2020 李亚飞. All rights reserved.
//

#import "BaseTableViewCellLayout.h"
#import "PTBaseDataModel.h"
#import <YACOBasicFoundation/YACOBasicFoundation.h>
@interface BaseTableViewCellLayout()
/// 头部图片的尺寸
@property (nonatomic, assign) CGRect headerRect;
/// 昵称的尺寸
@property (nonatomic, assign) CGRect nickNameRect;
/// 视频尺寸
@property (nonatomic, assign) CGRect videoRect;
/// 播放按钮的尺寸
@property (nonatomic, assign) CGRect playBtnRect;
/// 下边标题尺寸
@property (nonatomic, assign) CGRect titleLabelRect;
/// 挡板的尺寸
@property (nonatomic, assign) CGRect maskViewRect;
/// 高度
@property (nonatomic, assign) CGFloat height;
///是不是竖版
@property (nonatomic, assign) BOOL isVerticalVideo;
@end


@implementation BaseTableViewCellLayout
- (instancetype)initWithData:(PTBaseDataModel *)data
{
    self = [super init];
    if (self) {
        
        _data = data;
        
        CGFloat min_x = 0;
        CGFloat min_y = 0;
        CGFloat min_w = 0;
        CGFloat min_h = 0;
        
        CGFloat min_view_w = [UIScreen mainScreen].bounds.size.width;
        CGFloat margin = 10;
        
        
        min_x = 0;
        min_y = 0;
        min_w = min_view_w;
        min_h = self.videoHeight;
        self.videoRect = CGRectMake(min_x, min_y, min_w, min_h);
        
        
        
        min_x = 10;
        min_y = CGRectGetMaxY(self.videoRect) + margin;
        min_w = 30;
        min_h = min_w;
        self.headerRect = CGRectMake(min_x, min_y, min_w, min_h);
        
        
        min_x = CGRectGetMaxX(self.headerRect) + 10;
        min_y = CGRectGetMaxY(self.videoRect) + 18;
        min_w = [data.nick_name yaco_textSizeWithFont:[UIFont systemFontOfSize:15] limitWidth:min_view_w-2*margin-min_x].width;
        min_h = 15;
        self.nickNameRect = CGRectMake(min_x, min_y, min_w, min_h);
        
        
        
        
        
        
        min_w = 44;
        min_h = min_w;
        min_x = (CGRectGetWidth(self.videoRect)-min_w)/2;
        min_y = (CGRectGetHeight(self.videoRect)-min_h)/2;
        self.playBtnRect = CGRectMake(min_x, min_y, min_w, min_h);
        
        
//        min_x = margin;
//        min_y = CGRectGetMaxY(self.videoRect) + margin;
//        min_w = CGRectGetWidth(self.videoRect) - 2*margin;
//        min_h = [data.title textSizeWithFont:[UIFont systemFontOfSize:15] numberOfLines:0 constrainedWidth:min_w].height;
//        self.titleLabelRect = CGRectMake(min_x, min_y, min_w, min_h);
//
        
        self.height = CGRectGetMaxY(self.headerRect)+margin;
        
        min_x = 0;
        min_y = 0;
        min_w = min_view_w;
        min_h = self.height;
        self.maskViewRect = CGRectMake(min_x, min_y, min_w, min_h);
        
        
    }
    return self;
    
}



- (BOOL)isVerticalVideo {
    return _data.video_width < _data.video_height;
}

- (CGFloat)videoHeight {
    CGFloat videoHeight;
    if (self.isVerticalVideo) {
        videoHeight = [UIScreen mainScreen].bounds.size.width * 0.6 * self.data.video_height/self.data.video_width;
    } else {
        videoHeight = [UIScreen mainScreen].bounds.size.width * self.data.video_height/self.data.video_width;
    }
    return videoHeight;
}
@end
