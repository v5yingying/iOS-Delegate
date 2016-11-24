//
//  ViewController.m
//  DelegateDemo
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <ShareViewDelegate>
@property (nonatomic, assign) NSUInteger age;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    self.view.backgroundColor = [UIColor redColor];
}


- (void)initUI {
    ShareView *viewShare = [[ShareView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height * 0.3)];
    viewShare.delegate = self;
    [self.view addSubview:viewShare];

}

-(void)shareToSina {
    NSLog(@"shareToSina");
    NSLog(@"self.age%lu",(unsigned long)self.age);

}

-(void)shareToWX {
    NSLog(@"shareToWX");

}

-(void)shareToQQ {
    NSLog(@"shareToQQ");

}

-(void)share:(NSMutableDictionary *)dictM{
    NSLog(@"dictM%@",dictM);
    NSInteger age = [dictM[@"age"] integerValue];
    NSLog(@"age%ld",age);
    self.age = age;
    


}
@end
