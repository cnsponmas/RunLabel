//
//  ViewController.m
//  RunLabel
//
//  Created by 严林红 on 2018/1/4.
//  Copyright © 2018年 严林红. All rights reserved.
//

#import "ViewController.h"
#import "TitleView.h"
#import <Masonry.h>
#import "MainViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)showTitle:(id)sender {
    [self presentViewController:[MainViewController new] animated:YES completion:^{
        
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
//    NSString *scrollTitle = @"少时诵诗书所所所所所";
//
//    /** Step2: 创建 ScrollLabelView */
//    TXScrollLabelView *scrollLabelView = [TXScrollLabelView scrollWithTitle:scrollTitle type:TXScrollLabelViewTypeLeftRight velocity:5.0];
//
//    /** Step3: 设置代理进行回调(Optional) */
//   // scrollLabelView.scrollLabelViewDelegate = self;
//
//    /** Step4: 布局(Required) */
//    scrollLabelView.frame = CGRectMake(50, 100, 200, 50);
//    scrollLabelView.autoWidth = YES;
//    scrollLabelView.font = [UIFont systemFontOfSize:20.0f];
//    [self.view addSubview:scrollLabelView];
//
//    /** Step5: 开始滚动(Start scrolling!) */
//    [scrollLabelView beginScrolling];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
