//
//  AppDelegate.m
//  WindowAndView
//
//  Created by magic-devel on 2020/12/29.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSView *customView;

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.customView.wantsLayer = YES;
    self.customView.layer.backgroundColor = [NSColor blackColor].CGColor;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
