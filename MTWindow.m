//
//  MTWindow.m
//  MTerminal
//
//  Created by AppleBetas on 2017-12-23.
//  Copyright © 2017 AppleBetas. All rights reserved.
//

#import "MTWindow.h"

@implementation MTWindow

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        statusBarLegibilityView = [[MTGradientView alloc] init];
        statusBarLegibilityView.colours = @[[UIColor blackColor], [UIColor blackColor], [UIColor clearColor]];
        [self addSubview:statusBarLegibilityView];
    }
    return self;
}

-(void)adjustStatusBarLegibilityView {
    statusBarLegibilityView.frame = CGRectMake(0, 0, self.bounds.size.width, self.safeAreaInsets.top);
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self adjustStatusBarLegibilityView];
    [self bringSubviewToFront:statusBarLegibilityView];
}

-(void)safeAreaInsetsDidChange {
    [super safeAreaInsetsDidChange];
    [self adjustStatusBarLegibilityView];
}

@end
