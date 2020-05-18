//
//  DouYinControlView.h
//  ijkplayerTest
//
//  Created by 李亚飞 on 2020/5/12.
//  Copyright © 2020 李亚飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YACOVideo/ZFPlayer.h>

NS_ASSUME_NONNULL_BEGIN

@interface DouYinControlView : UIView  <ZFPlayerMediaControl>

- (void)resetControlView;

- (void)showCoverViewWithUrl:(NSString *)coverUrl withImageMode:(UIViewContentMode)contentMode;


@end

NS_ASSUME_NONNULL_END
