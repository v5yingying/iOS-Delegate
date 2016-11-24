//
//  ShareView.h
//  DelegateDemo
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ShareViewDelegate <NSObject>

-(void)shareToQQ;

-(void)shareToWX;

-(void)shareToSina;

-(void)share:(NSMutableDictionary *)dictM;

@end
@interface ShareView : UIView

@property (nonatomic,weak) id <ShareViewDelegate> delegate;

@end
