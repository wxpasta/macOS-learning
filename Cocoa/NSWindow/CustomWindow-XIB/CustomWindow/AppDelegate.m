//
//  AppDelegate.m
//  CustomWindow
//
//  Created by magic-devel on 2020/12/25.
//

#import "AppDelegate.h"
#import "MyWindow.h"
@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (strong, nonatomic)  MyWindow *myWindow;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
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
- (IBAction)showWindowAction:(id)sender {
    [self.myWindow makeKeyAndOrderFront:self];
    [self.myWindow center];
}

@end
