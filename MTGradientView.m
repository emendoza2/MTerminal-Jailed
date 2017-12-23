//
//  MTGradientView.m
//  MTerminal
//
//  Created by AppleBetas on 2017-12-23.
//  Copyright © 2017 AppleBetas. All rights reserved.
//

#import "MTGradientView.h"

@implementation MTGradientView

-(NSArray *)colours {
    // Convert gradient layer's CGColors to UIColors and return
    NSMutableArray *colours = [NSMutableArray array];
    [self.gradientLayer.colors enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [colours addObject:[UIColor colorWithCGColor:(CGColorRef)obj]];
    }];
    return colours;
}

-(void)setColours:(NSArray *)colours {
    // Convert provided UIColors to CGColors and set on gradient layer
    NSMutableArray *cgColours = [NSMutableArray array];
    [colours enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIColor *colour = (UIColor *)obj;
        [cgColours addObject:(id)colour.CGColor];
    }];
    self.gradientLayer.colors = cgColours;
}

#pragma mark - Layer creation and accessor

-(CAGradientLayer *)gradientLayer {
    return (CAGradientLayer *)self.layer;
}

+(Class)layerClass {
    return [CAGradientLayer class];
}

@end
