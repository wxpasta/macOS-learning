//
//  AppDelegate.m
//  Window
//
//  Created by magic-devel on 2020/12/24.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSWindow *modalWindow;

@property (strong) IBOutlet NSWindow *window;

@property (nonatomic ,strong) NSWindow *myWindow;
@property NSModalSession sessionCode;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(windowClose:) name:NSWindowWillCloseNotification object:nil];
    
    [self setWindowTitleImage];
    [self setWindowBKColor];
    [self addButtonToTitleBar];
}

// 关闭最后一个window，自动退出
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

// 应用关闭后 点击Dock 菜单再次打开应用
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
    [self.window makeKeyAndOrderFront:self];
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (IBAction)showModalWindow:(id)sender {
    // 修改显示位置，必须关闭restorable属性
    self.modalWindow.restorable = NO;
    NSRect frame = NSMakeRect(0, 0, 300, 300);
    [self.modalWindow setFrame:frame display:YES];
    self.modalWindow.backgroundColor = [NSColor systemRedColor];
    [[NSApplication sharedApplication] runModalForWindow:self.modalWindow];
//    [self.modalWindow center];
}

- (void)windowClose:(NSNotification *)notification {
    
    if (self.sessionCode != 0) {
        [[NSApplication sharedApplication] endModalSession:self.sessionCode];
        self.sessionCode = nil;
    }
    if ([notification.object isKindOfClass:[NSWindow class]]) {
        NSWindow *window = (NSWindow *)notification.object;
        if (window == self.modalWindow) {
            [[NSApplication sharedApplication] stopModal];
        }
        // 判断为主window执行关闭操作
        if (window == self.window) {
            [NSApp terminate:self];
        }
    }
}

- (IBAction)showSessionsWindow:(id)sender {
    self.sessionCode = [[NSApplication sharedApplication] beginModalSessionForWindow:self.modalWindow];
}

- (IBAction)createWindowAction:(id)sender {
    [self createWindow];
}

- (void)createWindow {
    [self.myWindow makeKeyAndOrderFront:self];
    [self.myWindow center];
}
-(NSWindow *)myWindow{
    if (!_myWindow) {
        NSRect frame = CGRectMake(0, 0, 200, 200);
        NSUInteger style = NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask;
        _myWindow = [[NSWindow alloc] initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
        _myWindow.title = @"New create Window";
    }
    return _myWindow;
}

- (void)setWindowTitleImage {
    self.window.representedURL = [NSURL URLWithString:@"WindowTitle"];
    self.window.title = @"My Window";
    NSImage *image = [NSImage imageNamed:@"TitleAppIcon"];
    [[self.window standardWindowButton:NSWindowDocumentIconButton] setImage:image];
}

- (void)setWindowBKColor {
    [self.window setOpaque:NO];
    [self.window setBackgroundColor:[NSColor greenColor]];
}

- (void)addButtonToTitleBar {
    NSView *titleView = [self.window standardWindowButton:NSWindowCloseButton].superview;
    NSButton *button = [[NSButton alloc] init];
    button.title = @"Register";
    float x = self.window.contentView.frame.size.width - 100;
    button.frame = NSMakeRect(x, 0, 80, 24);
    button.bezelStyle = NSBezelStyleRounded;
    [titleView addSubview:button];
}

@end
