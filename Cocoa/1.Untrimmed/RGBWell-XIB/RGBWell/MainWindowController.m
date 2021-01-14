//
//  MainWindowController.m
//  RGBWell
//
//  Created by magic-devel on 2021/1/8.
//

#import "MainWindowController.h"

@interface MainWindowController ()

@property (weak) IBOutlet NSSlider *rSlider;
@property (weak) IBOutlet NSSlider *gSlider;
@property (weak) IBOutlet NSSlider *bSlider;

@property (weak) IBOutlet NSColorWell *colorWell;

@property CGFloat rColor;
@property CGFloat gColor;
@property CGFloat bColor;
@property CGFloat alpha;

@end

@implementation MainWindowController

- (NSNibName)windowNibName {
    return @"MainWindowController";
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    self.rColor = 0.5;
    self.gColor = 0.5;
    self.bColor = 0.5;
    self.alpha = 1;
    
    self.rSlider.floatValue = self.rColor;
    self.gSlider.floatValue = self.gColor;
    self.bSlider.floatValue = self.bColor;
    
    [self adjustColor];
}

- (IBAction)adjustRed:(NSSlider *)sender {
    self.rColor = sender.floatValue;
    [self adjustColor];
}

- (IBAction)adjustGreen:(NSSlider *)sender {
    self.gColor = sender.floatValue;
    [self adjustColor];
}

- (IBAction)adjustBlue:(NSSlider *)sender {
    self.bColor = sender.floatValue;
    [self adjustColor];
}

- (void)adjustColor {
    NSColor *newColor = [NSColor colorWithRed:self.rColor green:self.gColor blue:self.bColor alpha:self.alpha];
    self.colorWell.color = newColor;
}


@end
