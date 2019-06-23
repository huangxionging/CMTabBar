//
//  UIViewController+UtilityTool.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/22.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "UIViewController+UtilityTool.h"
#import <objc/runtime.h>

@implementation UIViewController (UtilityTool)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(viewWillAppear:);
        SEL swizzledSelector = @selector(viewWillAppear);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL success = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (success) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

//@dynamic animated;

- (BOOL)needNavigationBar {
    return YES;
}

- (void)viewWillAppear {
    [self.navigationController setNavigationBarHidden: ![self needNavigationBar] animated: YES];
}


- (BOOL)needHideTabBarWhenPushed {
    return YES;
}


@end
