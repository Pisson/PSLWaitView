//
//  PSLWaitView.m
//
//  Created by Pisson on 15-1-16.
//  Copyright (c) 2015年 pisson. All rights reserved.
//

#import "PSLWaitView.h"
#import <UIKit/UIKit.h>

#define ScreenSize      [UIScreen mainScreen].bounds.size

@interface PSLWaitView ()

@end

@implementation PSLWaitView

+ (void)showWaitView
{
    UIView *backgroundView = [[[UIApplication sharedApplication].delegate window] viewWithTag:77777];
    UILabel *progressLabel = (UILabel *)[[[UIApplication sharedApplication].delegate window] viewWithTag:66666];
    if (backgroundView)
    {
        return;
    }
    else
    {
        backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenSize.width, ScreenSize.height)];
        backgroundView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
        
        UIView *roundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenSize.width/4.0, ScreenSize.width/4.0)];
        roundView.backgroundColor = [UIColor darkGrayColor];
        roundView.tag = 99999;
        UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        roundView.alpha = 0;
        [[[UIApplication sharedApplication].delegate window] addSubview:backgroundView];
        backgroundView.tag = 77777;
        
        [backgroundView addSubview:roundView];
        
        roundView.center = backgroundView.center;
        
        [roundView addSubview:indicatorView];
        
        roundView.layer.cornerRadius = 10;
        indicatorView.center = CGPointMake(ScreenSize.width/8.0, ScreenSize.width/8.0);
        [UIView animateWithDuration:0.3 animations:^{
            roundView.alpha = 0.9;
        } completion:nil];
        [indicatorView startAnimating];
        
        progressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, ScreenSize.width/4.0-21 - 2, ScreenSize.width/4.0, 21)];
        progressLabel.font = [UIFont systemFontOfSize:10];
        progressLabel.textColor = [UIColor whiteColor];
        progressLabel.textAlignment = NSTextAlignmentCenter;
        progressLabel.tag = 66666;
        [roundView addSubview:progressLabel];
        backgroundView.layer.zPosition = INT8_MAX;
    }
}

+ (void)hideWaitView
{
    UIView *backgroundView = [[[UIApplication sharedApplication].delegate window] viewWithTag:77777];
    [UIView animateWithDuration:0.3 animations:^{
        backgroundView.alpha = 0;
    } completion:^(BOOL finished) {
        [backgroundView removeFromSuperview];
    }];
}

+ (void)setProgress:(float)progress
{
    UIView *backgroundView = [[[UIApplication sharedApplication].delegate window] viewWithTag:77777];
    UIView *roundView = [backgroundView viewWithTag:99999];
    UILabel *progressLabel = (UILabel *)[roundView viewWithTag:66666];
    dispatch_async(dispatch_get_main_queue(), ^{
        progressLabel.text = [NSString stringWithFormat:@"%d%%", (int)(progress*100)];
    });
}

@end
