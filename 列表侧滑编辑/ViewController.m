//
//  ViewController.m
//  列表侧滑编辑
//
//  Created by 郭进 on 15/11/10.
//  Copyright © 2015年 郭进前. All rights reserved.
//

#import "ViewController.h"
#import "HXTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationController.navigationBar.translucent = NO;
    UIButton *nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(130, 100, 120, 60)];
    
    [nextBtn setTitle:@"侧滑按钮Demo" forState:UIControlStateNormal];
    nextBtn.backgroundColor = [UIColor redColor];
    [nextBtn addTarget:self action:@selector(clickNext) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)clickNext{
    
    HXTableViewController *tableVC = [[HXTableViewController alloc] init];
    
    [self.navigationController pushViewController:tableVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
