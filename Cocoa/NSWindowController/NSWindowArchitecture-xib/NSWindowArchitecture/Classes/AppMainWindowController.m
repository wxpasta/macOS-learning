//
//  AppMainWindowController.m
//  NSWindowArchitecture
//
//  Created by magic-devel on 2020/12/25.
//

#import "AppMainWindowController.h"
#import "AppViewController.h"

@interface AppMainWindowController ()

@end

@implementation AppMainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    [self.window center];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    self.contentViewController = [[AppViewController alloc] init];
}
- (NSString *)windowNibName{
    return @"AppMainWindowController";
}
@end
