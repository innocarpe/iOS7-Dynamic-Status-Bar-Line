//
//  SKViewController.h
//  SKDynamicStatusBarLine
//
//  Created by Wooseong Kim on 13. 10. 1..
//  Copyright (c) 2013년 Wooseong Kim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKDynamicStatusBarLineView.h"

@interface SKViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) SKDynamicStatusBarLineView *dynamicStatusBarLineView;

@end
