//
//  CMTabBar.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMTabBar.h"

@implementation CMTabBar

- (instancetype)initWithFrame:(CGRect)frame typeOfTabBarIndex:(NSInteger)typeOfTabBarIndex {
    if (self = [super initWithFrame:frame]) {
        // 选择的种类
        self = [[NSBundle mainBundle] loadNibNamed: @"CMTabBar" owner: nil options: nil][typeOfTabBarIndex];
        self.frame = frame;
    }
    return self;
}

- (void)selectClick:(UIButton *)sender {
    NSInteger tag = sender.tag - 1000;
    if (self.iconImageViewArray[tag].highlighted == YES) {
        return;
    }
    [self.iconImageViewArray enumerateObjectsUsingBlock:^(UIImageView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.highlighted = NO;
    }];
    [self.textTitleArray enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.highlighted = NO;
    }];
    self.iconImageViewArray[tag].highlighted = YES;
    self.textTitleArray[tag].highlighted = YES;
    NSInteger selectedIndex = tag;
    self.tabBarController.selectedIndex = selectedIndex;
}

- (void)setSelectedIndex:(NSInteger)selectedIndex {
    _selectedIndex = selectedIndex;
    self.iconImageViewArray[selectedIndex].highlighted = YES;
    self.textTitleArray[selectedIndex].highlighted = YES;
    self.tabBarController.selectedIndex = selectedIndex;
}

@end
