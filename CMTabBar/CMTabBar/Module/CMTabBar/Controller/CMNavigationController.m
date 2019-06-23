//
//  CMNavigationController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMNavigationController.h"
#import "UIViewController+UtilityTool.h"

@interface CMNavigationController ()

@end

@implementation CMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    self.interactivePopGestureRecognizer.delegate = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    for (UIView *tabBar in self.tabBarController.tabBar.subviews) {
        if ([tabBar isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            [tabBar removeFromSuperview];
        }
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 如果不是顶层控制器
    if (self.topViewController) {
        // 默认进入下级页面不显示 BottomBar
        // 需要的显示的， 单独设置 needHideTabBarWhenPushed，返回 NO 即可
        viewController.hidesBottomBarWhenPushed = [viewController needHideTabBarWhenPushed];
    }
    // 把下级页面是否需要导航栏作为参数赋值给上个页面作为是否需要动画
    [self.topViewController setValue: @([viewController needNavigationBar]) forKey: @"animated"];
    // 调用 push 方法 push 页面
    [super pushViewController:viewController animated:animated];
    // 在 push 执行完以后，根据下级页面是否需要导航栏来决定是否显示导航栏
    [self setNavigationBarHidden: ![viewController needNavigationBar] animated: YES];
}

@end
