//
//  AppDelegate.m
//  NSWindowArchitecture
//
//  Created by magic-devel on 2020/12/25.
//

#import "AppDelegate.h"
#import "AppMainWindowController.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@property (strong,nonatomic)  AppMainWindowController *mainWindowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self.mainWindowController showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (AppMainWindowController *)mainWindowController {
    if (!_mainWindowController) {
        _mainWindowController = [[AppMainWindowController alloc] init];
    }
    return _mainWindowController;
}

@end
