//
//  APPController.m
//  Test
//
//  Created by magic-devel on 2020/12/31.
//

#import "APPController.h"

@interface APPController ()

@property (weak) IBOutlet NSTextField *label;

@end


@implementation APPController


- (void)awakeFromNib{
    [super awakeFromNib];
    
    // 设置字体
    self.label.font = [NSFont fontWithName:@"Herculanum" size:15];
    // 文字颜色
    self.label.textColor = NSColor.redColor;
    // 背景色
    self.label.backgroundColor = NSColor.blueColor;
    /**
     用于控制接收方的单元是否在文本后面绘制其背景颜色。
     
     如果是，接收方的单元绘制其背景;
     如果没有，它就不会在文本后面绘制任何内容。
     
     为了防止呈现不一致，对圆形边框的文本字段禁用背景颜色呈现。
     */
    self.label.drawsBackground = YES;
    /**
     确定接收者是否可选择(但不可编辑)。
     
     如果是，接收器是可选择的，但不能编辑(使用edititable使文本既可选择又可编辑)。
     如果没有，则该文本既不可编辑也不可选择。
     */
    self.label.selectable = YES;
}

- (IBAction)sayHello:(id)sender {
    self.label.stringValue = @"Hello Youtube!!!";
}

@end
