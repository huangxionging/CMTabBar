//
//  CMMyViewController.m
//  CMTabBar
//
//  Created by 黄雄 on 2019/6/7.
//  Copyright © 2019 黄雄. All rights reserved.
//

#import "CMMyViewController.h"
#import "UIViewController+UtilityTool.h"
@interface CMMyViewController ()

@end

@implementation CMMyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的";
    self.navigationController.navigationBar.hidden = NO;
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(push)];
    UIButton *button = [UIButton buttonWithType: UIButtonTypeContactAdd];
    button.frame = CGRectMake(100, 100,  50, 25);
    [button addTarget: self action: @selector(push) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: button];
}



- (void) push {
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.navigationItem.title = @"查水表";
    vc1.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector(push)];
    [self.navigationController pushViewController: vc1  animated: YES];
    vc1.view.backgroundColor = [UIColor purpleColor];
}

//- (BOOL)needNavigationBar {
//    return NO;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)needNavigationBar {
    return NO;
}


@end
