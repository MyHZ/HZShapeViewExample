//
//  ViewController.m
//  HZShapeViewExample
//
//  Created by 黄震 on 2018/4/13.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import "ViewController.h"
#import <HZShapeView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HZShapeView* shapeView = [HZShapeView ShapeViewFrame:CGRectMake(10, 10, 200, 100) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(10, 100)];
    shapeView.layer.shadowColor = [UIColor redColor].CGColor;
    shapeView.layer.shadowOffset = CGSizeMake(0.f, 0.f);
    shapeView.layer.shadowOpacity = 3.f;
    [self.view addSubview:shapeView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
