//
//  PSLWaitView.h
//
//  Created by pisson on 2016/10/28.
//  Copyright (c) 2016年 pisson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSLWaitView : NSObject

/**
 show waiting ~!
 */
+ (void)showWaitView;

/**
 hide waiting ~!
 */
+ (void)hideWaitView;
/**
 progress ~!
 */
+ (void)setProgress:(float)progress;

@end
