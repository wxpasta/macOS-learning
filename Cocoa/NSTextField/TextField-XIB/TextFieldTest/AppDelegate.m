//
//  AppDelegate.m
//  TextFieldTest
//
//  Created by magic-devel on 2020/12/25.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.window.contentViewController = [[MainViewController alloc] init];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
