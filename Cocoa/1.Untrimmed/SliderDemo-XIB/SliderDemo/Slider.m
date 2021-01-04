//
//  Slider.m
//  SliderDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "Slider.h"
#import <Cocoa/Cocoa.h>

@interface Slider ()

@property (weak) IBOutlet NSTextField *label;
@property (weak) IBOutlet NSSlider *slider;

@end

@implementation Slider


- (void)awakeFromNib {
    [super awakeFromNib];
    self.slider.intValue = 25;
    self.label.intValue = [self.slider intValue];
}

- (IBAction)sliderChange:(id)sender {
    // 如果实时显示，需要在XIB中 选中continuous
    self.label.intValue = [self.slider intValue];
}

@end
