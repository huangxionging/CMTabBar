//
//  CMDiscoveryViewController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMDiscoveryViewController.h"
#import "UIViewController+UtilityTool.h"
@interface CMDiscoveryViewController ()

@end

@implementation CMDiscoveryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"发现";
    self.view.backgroundColor = [UIColor  greenColor];
}

- (BOOL)needNavigationBar {
    return NO;
}


@end
