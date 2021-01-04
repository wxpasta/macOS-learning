//
//  APPController.m
//  TestDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "APPController.h"
#import <Cocoa/Cocoa.h>

@interface APPController ()

@property (weak) IBOutlet NSTextField *label;
@property (weak) IBOutlet NSTextField *nameField;
@property (weak) IBOutlet NSDatePicker *datePicker;

@end


@implementation APPController


- (void)awakeFromNib {
    [super awakeFromNib];
    self.datePicker.dateValue = [NSDate date];
    
    
}

- (IBAction)showMe:(NSButton *)sender {
    NSString *str = [NSString stringWithFormat:@"%@ was here at %@", self.nameField.stringValue, self.datePicker.dateValue];
    self.label.stringValue = str;
}


@end
