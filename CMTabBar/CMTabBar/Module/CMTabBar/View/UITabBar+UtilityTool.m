//
//  UITabBar+UtilityTool.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "UITabBar+UtilityTool.h"

@implementation UITabBar (UtilityTool)

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGFloat width = CGRectGetWidth(self.frame) / 5;
    if (point.y < 0 && point.y > -27 && point.x > width * 2 && point.x < width * 3) {
        for (UIView  * subView in self.subviews) {
            NSString *classString = NSStringFromClass([subView class]);
            if ([classString containsString: @"TabBar"]) {
                return [subView valueForKey: @"mainButton"];
            }
        }
    }
    return [super hitTest:point withEvent:event];
}

@end
