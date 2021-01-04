//
//  AppController.m
//  Toolbar
//
//  Created by magic-devel on 2021/1/4.
//

#import "AppController.h"
#import <Cocoa/Cocoa.h>

@interface AppController ()

@property (weak) IBOutlet NSTextField *label;

@end

@implementation AppController


- (IBAction)toolbarAction:(id)sender {
    if ([sender tag] == 0) {
        self.label.stringValue = [sender label];
    }else{
        self.label.stringValue = @"";
    }
}

@end
