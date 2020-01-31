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
    int targetValue;
}
@end

@implementation ViewController

@synthesize slider;
@synthesize targetLabel;

- (void)startNewRound {
    currentValue = 50;
    self.slider.value = currentValue;
    targetValue = 1 + (arc4random() % 100);
}

- (void)updateLabels{
    self.targetLabel.text = [NSString stringWithFormat:@"%d",targetValue];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)showAlert{
    
    NSString *message;
    if (currentValue == targetValue) message = @"恭喜你猜中了！";
    else message = [NSString stringWithFormat:@"滑动条的数值是%d\n我们的目标数值是%d",currentValue,targetValue];
    
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
    
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)sliderMoved:(id)sender {
    UISlider *slider = (UISlider*)sender;
    currentValue = (int)lroundf(slider.value);
//    NSLog(@"滑动条的当前数值是：%d",currentValue);
}
@end
