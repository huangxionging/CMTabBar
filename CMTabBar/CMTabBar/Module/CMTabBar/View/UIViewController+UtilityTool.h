//
//  UIViewController+UtilityTool.h
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/22.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (UtilityTool)


/**
 是否需要导航栏

 @return 默认是 YES
 */
- (BOOL) needNavigationBar;

/**
 是否需要隐藏 tabBar

 @return 默认是 YES
 */
- (BOOL)needHideTabBarWhenPushed;


/**
 视图即将出现，- (void)viewWillAppear:(BOOL)animated 中调用， 决定是否需要导航栏
 */
- (void) viewWillAppear;


@end

NS_ASSUME_NONNULL_END
