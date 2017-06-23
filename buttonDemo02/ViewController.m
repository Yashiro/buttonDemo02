//
//  ViewController.m
//  buttonDemo02
//
//  Created by Andy on 17/6/23.
//  Copyright (c) 2017年 Andy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)move:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 点击上下左右执行该方法
- (IBAction)move:(UIButton *)sender {
    
    NSLog(@"Move!");
}
@end
