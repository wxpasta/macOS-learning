//
//  MainWindowController.m
//  RandomPassword
//
//  Created by magic-devel on 2021/1/8.
//

#import "MainWindowController.h"
#import "GeneratePassword.h"

@interface MainWindowController ()

@property (weak) IBOutlet NSTextField *textField;

@end

@implementation MainWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (NSNibName)windowNibName {
    return @"MainWindowController";
}

- (IBAction)generatePassword:(id)sender {
    // Get a random string of length 8
    NSUInteger length = 8;
    NSString *password =  [GeneratePassword generateRandomStringWithLength:length];
    
    // Tell the text field what to display
    self.textField.stringValue = password;
}

@end
