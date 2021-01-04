//
//  CustomController.m
//  CocoaBindings
//
//  Created by magic-devel on 2021/1/4.
//

#import "CustomController.h"

@implementation CustomController
- (instancetype)init
{
    self = [super init];
    if (self) {
        _checkBoxIsEnabled = NO;
        _amount = 20;
    }
    return self;
}
@end
