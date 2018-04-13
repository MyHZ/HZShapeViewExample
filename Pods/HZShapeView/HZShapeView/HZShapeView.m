//
//  HZShapeView.m
//  layer
//
//  Created by user on 2018/4/12.
//  Copyright © 2018年 CocoaJason. All rights reserved.
//

#import "HZShapeView.h"

@interface HZShapeView()

@property (nonatomic, assign) UIRectCorner corners;
@property (nonatomic, assign) CGSize cornerRadii;

@end

@implementation HZShapeView

+ (Class)layerClass
{
    return [CAShapeLayer class];
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:self.corners cornerRadii:self.cornerRadii];
    ((CAShapeLayer *)self.layer).path = maskPath.CGPath;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    ((CAShapeLayer *)self.layer).fillColor = backgroundColor.CGColor;
}

- (instancetype)initWithFrame:(CGRect)frame byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;
{
    if (self = [super initWithFrame:frame])
    {
        self.cornerRadii = cornerRadii;
        self.corners = corners;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

+ (instancetype)ShapeViewFrame:(CGRect)frame
             byRoundingCorners:(UIRectCorner)corners
                   cornerRadii:(CGSize)cornerRadii;
{
    
    return [[HZShapeView alloc] initWithFrame:frame byRoundingCorners:corners cornerRadii:cornerRadii];
}





@end
