//
//  ViewController.m
//  BulleEye
//
//  Created by admin on 2020/1/18.
//  Copyright © 2020 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int currentValue;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    currentValue = 50;
    // Do any additional setup after loading the view.
}

- (IBAction)showAlert{
    
    NSString *message = [NSString stringWithFormat:@"滑动条的数值是%d",currentValue];
    
    //初始化提示框；
      UIAlertController *alert = [UIAlertController
                                  alertControllerWithTitle:@"提示"
                                  message:message
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
    currentValue = (int)lroundf(slider.value);
    NSLog(@"滑动条的当前数值是：%d",currentValue);
}
@end
