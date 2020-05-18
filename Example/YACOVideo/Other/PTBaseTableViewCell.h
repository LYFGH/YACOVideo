//
//  PTBaseTableViewCell.h
//  packagesTest
//
//  Created by 李亚飞 on 2020/5/17.
//  Copyright © 2020 李亚飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewCellLayout.h"


NS_ASSUME_NONNULL_BEGIN

@protocol PTBaseTableViewCellDelegate <NSObject>

- (void)playTheVideoAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface PTBaseTableViewCell : UITableViewCell
@property (nonatomic, copy) void(^playCallback)(void);


@property (nonatomic, strong) BaseTableViewCellLayout *layout;


- (void)setDelegate:(id<PTBaseTableViewCellDelegate>)delegate withIndexPath:(NSIndexPath *)indexPath;


- (void)showMaskView;

- (void)hideMaskView;

- (void)setNormalMode;
@end

NS_ASSUME_NONNULL_END
