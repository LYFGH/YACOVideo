//
//  YACOViewController.h
//  YACOVideo
//
//  Created by 751185567@qq.com on 05/18/2020.
//  Copyright (c) 2020 751185567@qq.com. All rights reserved.
//

@import UIKit;
#import <YACOVideo/ZFPlayer.h>

@interface YACOViewController : UIViewController
@property (nonatomic, assign) ZFPlayerScrollViewDirection scrollViewDirection;

- (void)playTheIndex:(NSInteger)index;
@end
