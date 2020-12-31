//
//  AppDelegate.m
//  PanelTest
//
//  Created by magic-devel on 2020/12/25.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSPanel *loginPanel;
@property (weak) IBOutlet NSTextField *userNameTextField;

@property (weak) IBOutlet NSSecureTextField *passwordSecureTextField;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)onLoginClicked:(id)sender {
    [self.window beginSheet:self.loginPanel completionHandler:^(NSModalResponse returnCode) {
        NSString *userName = self.userNameTextField.stringValue;
        NSString *password = self.passwordSecureTextField.stringValue;
        NSLog(@"userName %@",userName);
        NSLog(@"password %@",password);
    }];
    
}
- (IBAction)onPanelOKBtnCliicked:(id)sender {
    [self.window endSheet:self.loginPanel];
}

@end
