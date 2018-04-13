//
//  HZShapeView.h
//  layer
//
//  Created by user on 2018/4/12.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface HZShapeView : UIView

/**
 创建带自定义圆角的View
 
 @param frame View的frame
 @param corners 圆角的方向
 @param cornerRadii CGSIze width为圆角的大小
 @return View
 */
+ (instancetype)ShapeViewFrame:(CGRect)frame
             byRoundingCorners:(UIRectCorner)corners
                   cornerRadii:(CGSize)cornerRadii;

- (instancetype)initWithFrame:(CGRect)frame
            byRoundingCorners:(UIRectCorner)corners
                  cornerRadii:(CGSize)cornerRadii;



@end
