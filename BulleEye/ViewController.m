//
//  ViewController.m
//  BulleEye
//
//  Created by admin on 2020/1/18.
//  Copyright © 2020 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)sliderMoved:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showAlert{
    
    //初始化提示框；
      UIAlertController *alert = [UIAlertController
                                  alertControllerWithTitle:@"提示"
                                  message:@"按钮被点击了"
                                  preferredStyle:  UIAlertControllerStyleAlert];
     
      [alert addAction:[UIAlertAction
                        actionWithTitle:@"确定"
                        style:UIAlertActionStyleDefault
                        handler:^(UIAlertAction * _Nonnull action) {
        //点击按钮的响应事件；
      }]];
     
      //弹出提示框；
      [self presentViewController:alert animated:true completion:nil];
}
- (IBAction)sliderMoved:(id)sender {
    UISlider *slider = (UISlider*)sender;
    NSLog(@"滑动条的当前数值是：%f",slider.value);
}
@end
