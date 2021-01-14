//
//  AppDelegate.m
//  RGBWell
//
//  Created by magic-devel on 2021/1/8.
//

#import "AppDelegate.h"
#import "MainWindowController.h"

@interface AppDelegate ()

@property (nonatomic, strong) MainWindowController *mainWindowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self.mainWindowController showWindow:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

#pragma mark -
- (MainWindowController *)mainWindowController {
    if (!_mainWindowController) {
        _mainWindowController = [[MainWindowController alloc] init];
    }
    return _mainWindowController;
}


@end
