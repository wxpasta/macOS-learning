//
//  AppController.m
//  MultipleWindows
//
//  Created by magic-devel on 2021/1/4.
//

#import "AppController.h"
#import "DowloadsWindowController.h"
#import <Cocoa/Cocoa.h>

@interface AppController ()

@property (strong, nonatomic) DowloadsWindowController *dowloadsWindowController;

@end

@implementation AppController


- (IBAction)showDonloads:(id)sender {
    if (!_dowloadsWindowController) {
        _dowloadsWindowController = [[DowloadsWindowController alloc] initWithWindowNibName:@"Downloads"];
    }
    [self.dowloadsWindowController showWindow:self];
}

@end
