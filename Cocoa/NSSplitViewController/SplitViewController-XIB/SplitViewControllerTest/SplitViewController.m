//
//  SplitViewController.m
//  SplitViewControllerTest
//
//  Created by magic-devel on 2020/12/28.
//

#import "SplitViewController.h"
#import "RightViewController.h"
#import "LeftViewController.h"
@interface SplitViewController ()

@end

@implementation SplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self addChildViewController:[[LeftViewController alloc]init]];
    [self addChildViewController:[[RightViewController alloc]init]];
}

@end
