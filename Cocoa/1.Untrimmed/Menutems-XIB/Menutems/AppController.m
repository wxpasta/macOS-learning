//
//  AppController.m
//  Menutems
//
//  Created by magic-devel on 2021/1/4.
//

#import "AppController.h"
#import <Cocoa/Cocoa.h>


/*
 在Menu中拖入一个 Submenu Menu Item
 并修改title 为Our Menu
 
 在Our Menu 中增加子目录
 拖入一个 Menu Item
 
 通过key Equlvalent 设置快捷键
 */

@interface AppController ()

@property (weak) IBOutlet NSTextField *label;

@end

@implementation AppController


- (IBAction)sayHello:(id)sender {
    self.label.stringValue = @"Hello";
}

- (IBAction)sayGoodbye:(id)sender {
    self.label.stringValue = @"Goodbye";
}


@end
