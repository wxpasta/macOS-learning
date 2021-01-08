# NSTextField



```objc
//设置默认显示的提示文字
@property (nullable, copy) NSString *placeholderString NS_AVAILABLE_MAC(10_10);
//设置默认显示的提示文字 带属性的文本
@property (nullable, copy) NSAttributedString *placeholderAttributedString NS_AVAILABLE_MAC(10_10);
//设置背景颜色
@property (nullable, copy) NSColor *backgroundColor;
//设置是否绘制背景
@property BOOL drawsBackground;
//设置文字颜色
@property (nullable, copy) NSColor *textColor;
//设置是否绘制边框
@property (getter=isBordered) BOOL bordered;
//设置是否贝塞尔绘制
@property (getter=isBezeled) BOOL bezeled;
//设置是否允许编辑
@property (getter=isEditable) BOOL editable;
//设置是否允许文本框选中
@property (getter=isSelectable) BOOL selectable;
//设置代理
@property (nullable, assign) id<NSTextFieldDelegate> delegate;
//获取是否接受第一响应
@property (readonly) BOOL acceptsFirstResponder;
//设置贝塞尔风格
/*
typedef NS_ENUM(NSUInteger, NSTextFieldBezelStyle) {
    NSTextFieldSquareBezel  = 0,
    NSTextFieldRoundedBezel = 1
};
*/
@property NSTextFieldBezelStyle bezelStyle;
//设置一个预定的最大宽度
@property CGFloat preferredMaxLayoutWidth;
//设置最大行数
@property NSInteger maximumNumberOfLines;
//设置是否允许编辑文本属性
@property BOOL allowsEditingTextAttributes;
//设置是否允许用户向文本框中拖拽图片
@property BOOL importsGraphics;

//下面这些方法用于子类进行重写
//选择文本框时调用
- (void)selectText:(nullable id)sender;
//询问是否允许开始编辑文本框
- (BOOL)textShouldBeginEditing:(NSText *)textObject;
//询问是否允许结束编辑文本框
- (BOOL)textShouldEndEditing:(NSText *)textObject;
//文本框已经开始进入编辑的通知
- (void)textDidBeginEditing:(NSNotification *)notification;
//文本框已经结束编辑的通知
- (void)textDidEndEditing:(NSNotification *)notification;
//文本框中文字发生变化的通知
- (void)textDidChange:(NSNotification *)notification;

//下面两个属性与TouchBar相关 只有再较高版本的mac电脑中有效
//自动完成编辑
@property (getter=isAutomaticTextCompletionEnabled) BOOL automaticTextCompletionEnabled NS_AVAILABLE_MAC(10_12_2);
//字符选择按钮
@property BOOL allowsCharacterPickerTouchBarItem NS_AVAILABLE_MAC(10_12_2);

//下面是一些便捷创建NSTextField对象的方法
+ (instancetype)labelWithString:(NSString *)stringValue NS_SWIFT_NAME(init(labelWithString:)) NS_AVAILABLE_MAC(10_12);
+ (instancetype)wrappingLabelWithString:(NSString *)stringValue NS_SWIFT_NAME(init(wrappingLabelWithString:)) NS_AVAILABLE_MAC(10_12);
+ (instancetype)labelWithAttributedString:(NSAttributedString *)attributedStringValue NS_SWIFT_NAME(init(labelWithAttributedString:)) NS_AVAILABLE_MAC(10_12);
+ (instancetype)textFieldWithString:(nullable NSString *)stringValue NS_AVAILABLE_MAC(10_12);
```

