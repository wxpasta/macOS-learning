//
//  OurView.m
//  ImageViewDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "OurView.h"

@interface OurView ()

@property (nonatomic, strong) NSImageView *imageView;

@end


@implementation OurView


- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.imageView];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        [self addSubview:self.imageView];
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

-(NSImageView *)imageView {
    if (!_imageView) {
        NSRect rect = NSMakeRect(10, 10, 400, 533);
        _imageView = [[NSImageView alloc]initWithFrame:rect];
        [_imageView setImageScaling:NSImageScaleNone];
        _imageView.image = [NSImage imageNamed:@"ssyy.jpeg"];
    }
    return _imageView;
}

@end
