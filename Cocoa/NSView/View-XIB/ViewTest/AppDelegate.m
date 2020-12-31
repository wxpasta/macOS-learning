//
//  AppDelegate.m
//  ViewTest
//
//  Created by magic-devel on 2020/12/31.
//

#import "AppDelegate.h"
#import "CircleView.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (nonatomic, strong) CircleView *circleView;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.circleView.alphaValue = 0.5;
    [self.window.contentView addSubview: self.circleView];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)reset:(id)sender {
    // 将视图的Alpha设为1.0，隐藏状态设为false。 子类可以重写此方法，并使用它使视图返回其初始状态。可以参考TableView的复用机制
    
    // 将视图恢复到初始状态
    [self.circleView prepareForReuse];
}

- (CircleView *)circleView {
    if (!_circleView) {
        _circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    }
    return _circleView;
}

@end
