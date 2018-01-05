//
//  MainViewController.m
//  RunLabel
//
//  Created by 严林红 on 2018/1/4.
//  Copyright © 2018年 严林红. All rights reserved.
//

#import "MainViewController.h"
#import <TXScrollLabelView.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *scrollTitle = @"少时诵诗书所所所所所";
    
    /** Step2: 创建 ScrollLabelView */
    TXScrollLabelView*   scrollLabelView = [TXScrollLabelView scrollWithTitle:scrollTitle type:TXScrollLabelViewTypeLeftRight velocity:5.0];
    
    /** Step3: 设置代理进行回调(Optional) */
    // scrollLabelView.scrollLabelViewDelegate = self;
    
    /** Step4: 布局(Required) */
    scrollLabelView.frame = self.view.bounds;
    scrollLabelView.autoWidth = YES;
    scrollLabelView.font = [UIFont systemFontOfSize:20.0f];
    [self.view addSubview:scrollLabelView];
    
    /** Step5: 开始滚动(Start scrolling!) */
    [scrollLabelView beginScrolling];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    //是否支持转屏
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    //支持哪些转屏方向
    return UIInterfaceOrientationMaskLandscape;
}

//进入界面直接旋转的方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeRight;
}
// 是否隐藏状态栏
- (BOOL)prefersStatusBarHidden
{
    return NO;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
