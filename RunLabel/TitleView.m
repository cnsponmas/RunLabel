//
//  TitleView.m
//  RunLabel
//
//  Created by 严林红 on 2018/1/4.
//  Copyright © 2018年 严林红. All rights reserved.
//

#import "TitleView.h"
#import <TXScrollLabelView.h>

@implementation TitleView
{
    TXScrollLabelView *scrollLabelView;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)init {
    self = [super init];
    if (self) {
        [self addTxView];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)layoutSubviews {
    scrollLabelView.frame = self.bounds;
}

- (void)addTxView{
    NSString *scrollTitle = @"少时诵诗书所所所所所";
    
    /** Step2: 创建 ScrollLabelView */
    scrollLabelView = [TXScrollLabelView scrollWithTitle:scrollTitle type:TXScrollLabelViewTypeLeftRight velocity:5.0];
    
    /** Step3: 设置代理进行回调(Optional) */
    // scrollLabelView.scrollLabelViewDelegate = self;
    
    /** Step4: 布局(Required) */
    scrollLabelView.frame = self.bounds;
    scrollLabelView.autoWidth = YES;
    scrollLabelView.font = [UIFont systemFontOfSize:20.0f];
    [self addSubview:scrollLabelView];
    
    /** Step5: 开始滚动(Start scrolling!) */
    [scrollLabelView beginScrolling];
}

@end
