//
//  YYLeftMenuController.m
//  YYSnailMusic
//
//  Created by YYMac on 17/1/15.
//  Copyright © 2017年 bluedigits. All rights reserved.
//

#import "YYLeftMenuController.h"

@interface YYLeftMenuController ()

@end

@implementation YYLeftMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton* button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
