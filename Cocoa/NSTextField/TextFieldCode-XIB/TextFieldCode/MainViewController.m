//
//  MainViewController.m
//  TextFieldCode
//
//  Created by magic-devel on 2021/1/8.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) NSTextField *textField;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建TextField对象
    _textField = [[NSTextField alloc]initWithFrame:NSMakeRect(50, 30, 200, 50)];
    //设置默认显示的提示字符串
    _textField.placeholderString = @"请填写你的梦想";
    //设置默认显示的提示字符串 使用的带属性的字符串
    NSMutableAttributedString * attriString = [[NSMutableAttributedString alloc]initWithString:@"请填写你的梦想"];
    [attriString addAttribute:NSForegroundColorAttributeName value:[NSColor redColor] range:NSMakeRange(5, 2)];
    _textField.placeholderAttributedString = attriString;
    //设置文本框背景颜色
    _textField.backgroundColor = [NSColor greenColor];
    //设置是否绘制背景
    _textField.drawsBackground = YES;
    //设置文字颜色
    _textField.textColor = [NSColor blueColor];
    //设置是否显示边框
    _textField.bordered = YES;
    //设置是否绘制贝塞尔风格的边框
    _textField.bezeled = YES;
    //设置是否可以编辑
    _textField.editable = YES;
    //设置文本框是否可以选中
    _textField.selectable = YES;
    //设置贝塞尔风格
    _textField.bezelStyle = NSTextFieldSquareBezel;
    //设置倾向布局宽度
    _textField.preferredMaxLayoutWidth = 100;
    //设置最大行数
    _textField.maximumNumberOfLines = 5;
    //设置断行模式
    [[_textField cell] setLineBreakMode:NSLineBreakByCharWrapping];
    //设置是否启用单行模式
    [[_textField cell]setUsesSingleLineMode:NO];
    //设置超出行数是否隐藏
    [[_textField cell] setTruncatesLastVisibleLine: YES ];
    [self.view addSubview:_textField];
}

@end
