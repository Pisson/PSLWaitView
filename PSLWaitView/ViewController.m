//
//  ViewController.m
//  PSLWaitView
//
//  Created by pisson on 2016/10/28.
//  Copyright © 2016年 pisson. All rights reserved.
//

#import "ViewController.h"

#import "PSLWaitView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [PSLWaitView showWaitView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
