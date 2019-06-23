//
//  CMHomePageViewController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMHomePageViewController.h"
#import "CMMyViewController.h"
#import "UIViewController+UtilityTool.h"
@interface CMHomePageViewController ()

@end

@implementation CMHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(push)];
    UIButton *button = [UIButton buttonWithType: UIButtonTypeContactAdd];
    button.frame = CGRectMake(100, 100,  50, 25);
    [button addTarget: self action: @selector(push) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: button];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self setAnimated: [self needNavigationBar]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //    BOOL animatedX = self.animated;
    [self.navigationController setNavigationBarHidden: ![self needNavigationBar]  animated: self.animated];
    //    self.navigationController.navigationBar.hidden = YES;
    //    [self.navigationController setNavigationBarHidden: YES animated: YES];
}

- (void) push {
    [self.navigationController pushViewController: [[CMMyViewController alloc] init]  animated: YES];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)setAnimated:(BOOL)animated {
}


- (BOOL)needNavigationBar {
    return NO;
}

@end
