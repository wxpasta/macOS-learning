//
//  CircleImageView.m
//  ImageViewTest
//
//  Created by magic-devel on 2020/12/31.
//

#import "CircleImageView.h"

@implementation CircleImageView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [self setCornerRadius:dirtyRect.size];
}

- (void)setCornerRadius:(CGSize)size {
    self.wantsLayer = true;
    self.layer.cornerRadius = size.width / 2;
    self.layer.masksToBounds = true;
}


@end
