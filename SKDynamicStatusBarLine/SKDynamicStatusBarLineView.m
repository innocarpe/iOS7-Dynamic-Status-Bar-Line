//
//  SKDynamicStatusBarLineView.m
//  SKDynamicStatusBarLine
//
//  Created by Wooseong Kim on 13. 10. 1..
//  Copyright (c) 2013년 Wooseong Kim. All rights reserved.
//

#import "SKDynamicStatusBarLineView.h"

@implementation SKDynamicStatusBarLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
        self.frame = CGRectMake(0, statusBarFrame.size.height + 1, [UIScreen mainScreen].bounds.size.width, 0.5f);
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (id)initWithScrollView:(UIScrollView *)scrollView {
    self = [super init];
    if (self) {
        // You can customize the color or position, etc.
        self.backgroundColor = [UIColor blackColor];
        self.alpha = 0;
        scrollView.delegate = self;
    }
    return self;
}

#pragma mark - UIScrollView delegate methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
    
    // You can customize this values
    if (scrollView.contentOffset.y > scrollView.frame.size.height * 0.15) {
        // over 15% length of total height, alpha is 0.4f
        self.alpha = 0.4f;
    }else{
        // under 15%m, fade in/out with alpha
        CGFloat limit = scrollView.frame.size.height * 0.15;
        CGFloat alphaRatio = scrollView.contentOffset.y / limit * 0.4f;
        self.alpha = alphaRatio;
    }
    

}

@end
