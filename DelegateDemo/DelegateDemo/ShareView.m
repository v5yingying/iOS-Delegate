//
//  ShareView.m
//  DelegateDemo
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "ShareView.h"

@implementation ShareView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        int num = 3;
        CGFloat X,Y,W,H;
        Y = 0;
        W = frame.size.width / num;
        H = frame.size.height;
        for (int i = 0; i < num; i ++) {
            X = i * W;
            UIButton *button = [UIButton new];
            button.tag = i;
            [button setTitle:[NSString stringWithFormat:@"shareto %d",i] forState:UIControlStateNormal];
            [button setBackgroundColor:[UIColor yellowColor]];
            [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
            button.titleLabel.font = [UIFont systemFontOfSize:17];
            [self addSubview:button];
            [button setFrame:CGRectMake(X, Y, W, H)];
            [button addTarget:self action:@selector(share:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    return self;
}

-(void)share:(UIButton *)sender{
    if (sender.tag == 0) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToQQ)]) {
            [self.delegate shareToQQ];
        }
        NSMutableDictionary *dictM = [NSMutableDictionary new];
        [dictM setValue:@"jack" forKey:@"name"];
        [dictM setValue:@"18" forKey:@"age"];
        if (self.delegate && [self.delegate respondsToSelector:@selector(share:)]) {
            [self.delegate share:dictM];
        }
    }
    if (sender.tag == 1) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToWX)]) {
            [self.delegate shareToWX];
        }
    }
    if (sender.tag == 2) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToSina)]) {
            [self.delegate shareToSina];
        }
    }
}
@end
