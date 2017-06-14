//
//  ViewController.m
//  addCalc01
//
//  Created by Andy on 17/5/30.
//  Copyright (c) 2017年 Andy. All rights reserved.
//

#import "ViewController.h"

// 类扩展
@interface ViewController ()

- (IBAction)calculate;

// 第一个文本框
@property (weak, nonatomic) IBOutlet UITextField *oneTxt;

// 第二个文本框
@property (weak, nonatomic) IBOutlet UITextField *twoTxt;

// 计算结果
@property (weak, nonatomic) IBOutlet UILabel *resLbl;

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

// 点击计算按钮
- (void)calculate {
    // 实现计算功能
    
    // 1. 获取用户的输入
    NSString *num1 = self.oneTxt.text;
    NSString *num2 = self.twoTxt.text;
    
    int n1 = [num1 intValue];
    int n2 = [num2 intValue];
    
    // 2. 计算和
    int res = n1 + n2;
    
    // 3. 把结果显示到结果Label上
    self.resLbl.text = [NSString stringWithFormat:@"%d", res];
    
    NSLog(@"calculate");
    
    // 4. 点完计算之后键盘消失
    // 谁叫出键盘就是"第一响应者", 让"第一响应者"resign就可以让键盘消失
//    [self.twoTxt resignFirstResponder];
//    [self.oneTxt resignFirstResponder];
    
    // 5. 点击计算完成之后键盘消失的第二种方法
    // self.view表示的是当前控制器所管理的那个view(每个控制器都会管理一个view)
    // 此时让键盘消失的思路就是: 让控制器所管理的view停止编辑，凡是在这个view中的子控件事件响应的键盘都会消失
    [self.view endEditing:YES];
}

@end
