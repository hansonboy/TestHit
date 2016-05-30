
//
//  Button.m
//  TestHit
//
//  Created by wangjianwei on 16/5/30.
//  Copyright © 2016年 yiqi. All rights reserved.
//

#import "Button.h"

@implementation Button

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    if (!self.enabled || self.hidden || !self.userInteractionEnabled || self.alpha == 0) return [super pointInside:point withEvent:event];
    CGPoint pnt = [self convertPoint:point toView:self.superview];
    return CGRectContainsPoint(self.superview.bounds, pnt);
}

//- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
//    NSLog(@"%d-%d",self.touchInside,self.isTracking);
//    return YES;
//}
//
//- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
//    [super endTrackingWithTouch:touch withEvent:event];
//    NSLog(@"%d-%d",self.touchInside,self.isTracking);
//}


@end
