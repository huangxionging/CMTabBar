//
//  CMTabBar.h
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMTabBar : UIView

@property (nonatomic, weak) UITabBarController *tabBarController;

/**
 TabBar 类型
 */
@property (nonatomic, assign) NSInteger typeOfTabBarIndex;

/**
 图标数组
 */
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray<UIImageView *> *iconImageViewArray;

/**
 标题数组
 */
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray<UILabel *> *textTitleArray;

/**
 初始化函数

 @param frame 尺寸信息
 @param typeOfTabBarIndex TabBar 种类
 @return TabBar
 */
- (instancetype)initWithFrame:(CGRect)frame typeOfTabBarIndex: (NSInteger) typeOfTabBarIndex;


/**
 按钮点击事件

 @param sender 点击的按钮
 */
- (IBAction)selectClick:(UIButton *)sender;


/**
 选中指示器
 */
@property (nonatomic, assign) NSInteger selectedIndex;

/**
 特殊按钮指示
 */
@property (weak, nonatomic) IBOutlet UIButton *mainButton;


@end

NS_ASSUME_NONNULL_END
