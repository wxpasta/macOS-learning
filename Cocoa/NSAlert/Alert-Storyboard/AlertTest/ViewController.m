//
//  ViewController.m
//  AlertTest
//
//  Created by magic-devel on 2020/12/25.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)onRegisterButtonClicked:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    //增加一个按钮
    [alert addButtonWithTitle:@"Ok"];
    //提示的标题
    [alert setMessageText:@"Alert"];
    //提示的详细内容
    [alert setInformativeText:@"password length must be more than 6 "];
    //设置告警风格
    [alert setAlertStyle:NSInformationalAlertStyle];
    //开始显示告警
    [alert beginSheetModalForWindow:self.view.window
                  completionHandler:^(NSModalResponse returnCode){
        //用户点击告警上面的按钮后的回调
    }];
}

@end
