//
//  SKViewController.m
//  SKDynamicStatusBarLine
//
//  Created by Wooseong Kim on 13. 10. 1..
//  Copyright (c) 2013년 Wooseong Kim. All rights reserved.
//

#import "SKViewController.h"

@interface SKViewController ()

@end

@implementation SKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // adjust scrollview for test
    self.scrollView.backgroundColor = [UIColor whiteColor];
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width, self.scrollView.frame.size.height + 200);
    
    // make dynamicStatusBarLineView
    self.dynamicStatusBarLineView = [[SKDynamicStatusBarLineView alloc] initWithScrollView:self.scrollView];
    
    // add this view and bring it to front
    [self.view addSubview:self.dynamicStatusBarLineView];
    [self.view bringSubviewToFront:self.dynamicStatusBarLineView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
