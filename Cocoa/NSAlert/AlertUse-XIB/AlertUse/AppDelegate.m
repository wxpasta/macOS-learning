//
//  AppDelegate.m
//  AlertUse
//
//  Created by magic-devel on 2021/1/8.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)alert:(id)sender {
    NSError * error = [NSError errorWithDomain:@"testError" code:1001 userInfo:@{@"userid":@"1000"}];
        NSAlert * alert = [NSAlert alertWithError:error];
        [alert runModal];
}

- (IBAction)alert2:(id)sender {
    NSAlert * alert = [[NSAlert alloc]init];
        alert.icon = [NSImage imageNamed:@"icon"];
        alert.messageText = @"警告信息";
        alert.informativeText = @"额外提供的内容";
        alert.showsHelp = YES;
        alert.helpAnchor = @"mac";
        alert.alertStyle = NSAlertStyleInformational;
        alert.showsSuppressionButton = YES;
        [alert.suppressionButton setTarget:self];
        [alert.suppressionButton setAction:@selector(click)];
        [alert addButtonWithTitle:@"1"];
        [alert addButtonWithTitle:@"2"];
        [alert addButtonWithTitle:@"3"];
        [alert addButtonWithTitle:@"4"];
        long res =  [alert runModal];
        NSLog(@"%ld",res);
}
@end
