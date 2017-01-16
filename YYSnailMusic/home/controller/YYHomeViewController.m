//
//  YYHomeViewController.m
//  YYSnailMusic
//
//  Created by YYMac on 17/1/13.
//  Copyright © 2017年 bluedigits. All rights reserved.
//

#import "YYHomeViewController.h"
#import "YYLeftMenuController.h"
#import "PKRevealController.h"

@interface YYHomeViewController ()<PKRevealing>

@end

@implementation YYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"YYSnailMusic";
    self.view.backgroundColor = [UIColor colorWithRed:238.0/255 green:238.0/255 blue:238.0/255 alpha:1.0];
    
    //左侧菜单栏按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_main_sider_menu"] style:UIBarButtonItemStylePlain target:self action:@selector(openLeftMenu)];
    
    self.navigationItem.leftBarButtonItem = leftButton;
    self.navigationController.revealController.delegate = self;
}

-(void)openLeftMenu
{
    [self.navigationController.revealController setLeftViewController:[YYLeftMenuController new]];
    //显示菜单栏
    [self.navigationController.revealController showViewController:self.navigationController.revealController.leftViewController];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
