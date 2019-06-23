//
//  CMHomePageMainViewController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/22.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMHomePageMainViewController.h"
#import "CMMyViewController.h"
#import "UIViewController+UtilityTool.h"
@interface CMHomePageMainViewController ()

@end

@implementation CMHomePageMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor brownColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(push)];
    UIButton *button = [UIButton buttonWithType: UIButtonTypeContactAdd];
    button.frame = CGRectMake(100, 100,  50, 25);
    [button addTarget: self action: @selector(push) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: button];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemRewind target: self action: @selector(pop)];
}


- (void) push {
    [self.navigationController pushViewController: [[CMMyViewController alloc] init]  animated: YES];
}

- (void)pop {
    [self.navigationController popViewControllerAnimated: YES];
}


@end
