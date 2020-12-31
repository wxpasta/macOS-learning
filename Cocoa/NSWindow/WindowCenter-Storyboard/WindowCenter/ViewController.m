//
//  ViewController.m
//  WindowCenter
//
//  Created by magic-devel on 2020/12/25.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak) IBOutlet NSView *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [self.customView setWantsLayer:YES];
    [self.customView.layer setBackgroundColor:[[NSColor whiteColor] CGColor]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(void)viewDidAppear{
    [super viewDidAppear];
    [self.view.window setOpaque:NO];
    [self.view.window setBackgroundColor:NSColor.blueColor];
    self.view.window.restorable = NO;
    [self.view.window center];
}

- (IBAction)showViewWindow:(id)sender {
    NSWindow *w = self.customView.window;
    NSLog(@"ViewController window = %@",w);
    NSLog(@"ViewController view = %@",self.view);
}

@end
