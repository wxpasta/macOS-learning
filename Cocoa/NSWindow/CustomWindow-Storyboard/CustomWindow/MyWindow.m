//
//  MyWindow.m
//  CustomWindow
//
//  Created by magic-devel on 2020/12/25.
//

#import "MyWindow.h"

@implementation MyWindow

-(instancetype)initWithContentRect:(NSRect)contentRect
                         styleMask:(NSWindowStyleMask)style
                           backing:(NSBackingStoreType)backingStoreType
                             defer:(BOOL)flag
{
    self = [super initWithContentRect:contentRect
                            styleMask:style
                              backing:backingStoreType
                                defer:flag];
    if (self) {
    }
    return self;
}


- (void)makeKeyWindow {
    [super makeKeyWindow];
}

- (void)makeKeyAndOrderFront:(id)sender {
    [super makeKeyAndOrderFront:sender];
}

- (void)orderFront:(id)sender {
    [super orderFront:sender];
}

- (void)orderOut:(id)sender {
    [self orderOut:sender];
}

-(void)dealloc{
    NSLog(@"MyWindow dealloc");
}

@end
