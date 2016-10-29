//
//  PSLWaitView.h
//  hrApp
//
//  Created by Pisson on 15-1-16.
//  Copyright (c) 2015年 pisson. All rights reserved.
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
