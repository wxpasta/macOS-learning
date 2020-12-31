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
