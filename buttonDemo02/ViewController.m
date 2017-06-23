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

- (IBAction)scale:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UIButton *btnIcon;

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
    
    // 为每个按钮设置不同的Tag值，然后在这个方法中就可以根据sender.tag来判断用户当前点击的是哪个按钮
    
    // 1. 获取原始的frame
    CGRect originFrame = self.btnIcon.frame;
    
    // 2. 修改frame
    switch (sender.tag) {
        case 10:
            // 上
            originFrame.origin.y -= 10;
            break;
            // 右
        case 20:
            originFrame.origin.x += 10;
            break;
            // 下
        case 30:
            originFrame.origin.y += 10;
            break;
            // 左
        case 40:
            originFrame.origin.x -= 10;
        default:
            break;
    }
    
    // 3. 重新赋值
    self.btnIcon.frame = originFrame;
    
    NSLog(@"Move!");
}

- (IBAction)scale:(UIButton *)sender {
    CGRect originFrame = self.btnIcon.frame;
    
    switch (sender.tag) {
        case 50:
            originFrame.size.height += 10;
            originFrame.size.width += 10;
            break;
        case 60:
            originFrame.size = CGSizeMake(originFrame.size.width - 10, originFrame.size.height - 10);
        default:
            break;
    }
    
    self.btnIcon.frame = originFrame;
    
    NSLog(@"Scale!");
}
@end
