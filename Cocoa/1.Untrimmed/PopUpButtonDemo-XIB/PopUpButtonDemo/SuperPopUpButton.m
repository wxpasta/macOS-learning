//
//  SuperPopUpButton.m
//  PopUpButtonDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "SuperPopUpButton.h"
#import <Cocoa/Cocoa.h>

@interface SuperPopUpButton ()

@property (weak) IBOutlet NSPopUpButton *popUpButton;
@property (weak) IBOutlet NSTextField *textField;

@property (weak) IBOutlet NSTextField *label;

@end


@implementation SuperPopUpButton

- (IBAction)add:(id)sender {
    [self.popUpButton addItemWithTitle:self.textField.stringValue];
}

- (IBAction)update:(id)sender {
    self.label.stringValue = [self.popUpButton titleOfSelectedItem];
}

@end
