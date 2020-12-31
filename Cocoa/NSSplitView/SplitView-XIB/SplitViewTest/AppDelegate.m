//
//  AppDelegate.m
//  SplitViewTest
//
//  Created by magic-devel on 2020/12/28.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet NSView *leftView;
@property (weak) IBOutlet NSView *rightView;
@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.leftView.wantsLayer = YES;
    self.leftView.layer.backgroundColor = [NSColor redColor].CGColor;
    
    self.rightView.wantsLayer = YES;
    self.rightView.layer.backgroundColor = [NSColor blueColor].CGColor;
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
