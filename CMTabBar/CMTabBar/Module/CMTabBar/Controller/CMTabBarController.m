//
//  CMTabBarController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMTabBarController.h"
#import "CMHomePageViewController.h"
#import "CMMyViewController.h"
#import "CMShopMallViewController.h"
#import "CMDiscoveryViewController.h"
#import "CMCoinViewController.h"
#import "CMNavigationController.h"
#import "CMTabBar.h"
#import "UITabBar+UtilityTool.h"
#import "CMHomePageMainViewController.h"

@interface CMTabBarController ()

@property (nonatomic, strong) CMTabBar *myTabBar;

@end

@implementation CMTabBarController

- (CMTabBar *)myTabBar {
    if (_myTabBar == nil) {
        CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
        CGFloat tabBarHeight = CGRectGetHeight(self.tabBar.frame);
        _myTabBar = [[CMTabBar alloc] initWithFrame: CGRectMake(0, tabBarHeight - 76 - 34, screenWidth, 76) typeOfTabBarIndex: 0];
        _myTabBar.tabBarController = self;
    }
    return _myTabBar;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.translucent = NO;
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.opaque = YES;
    [self.tabBar setClipsToBounds:NO];
    [self.tabBar setShadowImage: [UIImage alloc]];
    [self configViewControllers];
}

- (void) configViewControllers {
    CMHomePageMainViewController *homePage = [[CMHomePageMainViewController alloc] init];
    CMNavigationController *navHome = [[CMNavigationController alloc] initWithRootViewController: homePage];
    
    CMMyViewController *myVC = [[CMMyViewController alloc] init];
    CMNavigationController *navMy = [[CMNavigationController alloc] initWithRootViewController: myVC];
    
    CMShopMallViewController *shopMall = [[CMShopMallViewController alloc] init];
    CMNavigationController *navshopMall = [[CMNavigationController alloc] initWithRootViewController: shopMall];
    
    
    CMDiscoveryViewController *discovery = [[CMDiscoveryViewController alloc] init];
    CMNavigationController *navDiscovery = [[CMNavigationController alloc] initWithRootViewController: discovery];
    
    CMCoinViewController *loveCoin = [[CMCoinViewController alloc] init];
    CMNavigationController *navLoveCoin = [[CMNavigationController alloc] initWithRootViewController: loveCoin];
    
    
    
    [self setViewControllers: @[navLoveCoin, navDiscovery, navHome, navshopMall, navMy]];
    
}

- (void) configTabBar {
    for (UIView *tabBar in self.tabBarController.tabBar.subviews) {
        if ([tabBar isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            [tabBar removeFromSuperview];
        }
    }
    [self.tabBar addSubview: self.myTabBar];
    self.myTabBar.selectedIndex = 2;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
