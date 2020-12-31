//
//  AppDelegate.m
//  SplitViewControllerTest
//
//  Created by magic-devel on 2020/12/28.
//

#import "AppDelegate.h"
#import "SplitViewController.h"
@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.window.contentViewController = [[SplitViewController alloc] init];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
