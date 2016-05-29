//
//  RightArrowButton.m
//  TestHit
//
//  Created by wangjianwei on 16/5/28.
//  Copyright © 2016年 yiqi. All rights reserved.
//

#import "RightArrowButton.h"
@interface RightArrowButton()
@property (weak, nonatomic) IBOutlet UITextField *textfiled;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation RightArrowButton
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"RightArrowButton" owner:self options:nil] lastObject];
        [self addSubview:view];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        [self addConstraints:@[[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0],
                               [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0],
                               [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0],
                               [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]]];
    }
    return self;
}

- (IBAction)hit:(id)sender {
    NSLog(@"respond the event");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    BOOL isContained = [self pointInside:point withEvent:event];
    if (self.hidden || self.alpha <= 0.1 || self.userInteractionEnabled == NO || !isContained)return nil;
    return self.button;
}

@end
