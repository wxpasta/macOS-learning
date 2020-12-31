//
//  MainViewController.m
//  TextFieldTest
//
//  Created by magic-devel on 2020/12/25.
//

#import "MainViewController.h"

@interface MainViewController ()

/// NSTextField 继承  NSControl
/// 明文显示输入框信息
@property (weak) IBOutlet NSTextField *userNameTextField;

/// NSSecureTextField 继承 NSTextField
/// 密文显示输入框信息
@property (weak) IBOutlet NSSecureTextField *passwordTextField;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    /*
     NSTextField 是一个可以展示或编辑的文本框，是最常用的UI控件之一。
     需要注意它与iOS的UITextFeild是有区别:
     在iOS开发中，UILabel是用来展示固定的文本的，UITextField是用来编辑文本的。
     在macOS中，它们两者是合二为一的，通过isEditable这个属性来决定展示的样式。
     */
}

- (IBAction)onLoginClicked:(id)sender {

}


- (BOOL)textShouldBeginEditing:(NSText *)textObject{
    return YES;
}

- (BOOL)textShouldEndEditing:(NSText *)textObject{
    return YES;
}

/// 光标进入输入框第一次输入得到事件通知
- (void)textDidBeginEditing:(NSNotification *)notification{
    
}

/// 光标离开输入框时得到事件通知
- (void)textDidEndEditing:(NSNotification *)notification{
    
}

- (void)textDidChange:(NSNotification *)notification {
    
}
@end
