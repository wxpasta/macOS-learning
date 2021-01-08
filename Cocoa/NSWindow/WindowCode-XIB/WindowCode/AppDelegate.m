//
//  AppDelegate.m
//  WindowCode
//
//  Created by magic-devel on 2021/1/8.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    //将系统的标题栏设置透明
    self.window.titlebarAppearsTransparent = YES;
    //将系统标题进行隐藏
    self.window.titleVisibility = NSWindowTitleHidden;
    //设置可以通过拖拽window背景视图进行窗口的移动
    [self.window setMovableByWindowBackground:YES];
    //设置window的内容部分充满整个窗口
    [self.window setStyleMask:[self.window styleMask] | NSWindowStyleMaskFullSizeContentView];
    //获取到windows的主视图
    NSView * themeView = self.window.contentView.superview;
    //根据层级结构获取到标题栏视图
    NSView * titleView = themeView.subviews[1];
    titleView.autoresizesSubviews = YES;
    //重新对标题栏视图的尺寸进行布局，使得系统的功能按钮出现在自定义标题中的竖直中间
//    [titleView mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(@10);
//        make.width.equalTo(@70);
//        make.top.equalTo(@9);
//        make.height.equalTo(@22);
//    }];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
