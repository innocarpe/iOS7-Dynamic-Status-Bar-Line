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
    self.scrollView.backgroundColor = [UIColor blueColor];
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width, self.scrollView.frame.size.height + 6);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
