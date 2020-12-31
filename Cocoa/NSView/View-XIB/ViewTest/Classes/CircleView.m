//
//  CircleView.m
//  ViewTest
//
//  Created by magic-devel on 2020/12/31.
//

#import "CircleView.h"

@implementation CircleView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    [self setCornerRadius:dirtyRect.size];
}

- (void)setFrameSize:(NSSize)newSize {
    [super setFrameSize:newSize];
    [self setCornerRadius:newSize];
}

/// 将视图的边界矩形的大小设置为指定的尺寸
- (void)setBoundsSize:(NSSize)newSize{
    [super setBoundsSize:newSize];
    [self setCornerRadius:newSize];
}

/// 将视图的边界矩形的原点设置为指定点
- (void)setBoundsOrigin:(NSPoint)newOrigin{
    [super setBoundsOrigin:newOrigin];
}

/// 在视图的子视图中插入一个视图，以便将其显示在另一个视图的上方或下方
- (void)addSubview:(NSView *)view positioned:(NSWindowOrderingMode)place relativeTo:(NSView *)otherView {
    [super addSubview:view positioned:place relativeTo:otherView];
}

/// 将视图添加为指定视图的子视图
- (void)addSubview:(NSView *)view {
    [super addSubview:view];
}

/// 从父视图中移除
- (void)removeFromSuperview {
    [super removeFromSuperview];
}

#pragma mark -
- (void)setCornerRadius:(CGSize)size {
    // 设置为YES时，转换成可支持Layer的视图，即使用一个CALayer对象来管理呈现内容，会隐式地将所有子视图支持该属性
    self.wantsLayer = YES;
    
    /// layer 视图用作其后备存储的核心动画层
    self.layer.backgroundColor = [NSColor redColor].CGColor;
    self.layer.cornerRadius = size.width / 2;
    self.layer.masksToBounds = YES;
}

@end
