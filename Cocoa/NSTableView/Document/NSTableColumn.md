# NSTableColumn



```objective-c
//初始化方法，指定一个列ID
- (instancetype)initWithIdentifier:(NSString *)identifier;
//与此列关联的ID
@property (copy) NSString *identifier;
//关联的TableView
@property (nullable, assign) NSTableView *tableView;
//设置列宽度
@property CGFloat width;
//设置最小列宽度
@property CGFloat minWidth;
//设置最大列宽度
@property CGFloat maxWidth;
//设置类标题
@property (copy) NSString *title;
/*
列标题视图 开发者可以对其进行修改
需要注意，NSTableHeaderCell是继承自NSTextFieldCell
*/
@property (strong) __kindof NSTableHeaderCell *headerCell;
//设置此列是否可以进行编辑
@property (getter=isEditable) BOOL editable;
//进行列尺寸的调整 以列标题视图的宽度为标准 
- (void)sizeToFit;
//提供了这个属性，会在列标题那里显示一个排序按钮 点击列标题后可以进行排序操作(会回调相关协议方法)
@property (nullable, copy) NSSortDescriptor *sortDescriptorPrototype;
//设置列尺寸的调整模式 枚举如下
/*
typedef NS_OPTIONS(NSUInteger, NSTableColumnResizingOptions) {
    NSTableColumnNoResizing = 0, //不允许进行宽度调整
    //详见NSTabelView的columnAutoresizingStyle属性
    NSTableColumnAutoresizingMask = ( 1 << 0 ), //使用tableView的column调整策略
    NSTableColumnUserResizingMask = ( 1 << 1 ), //允许用户进行尺寸调整
};
*/
@property NSTableColumnResizingOptions resizingMask;
//设置列头的提示标题 当鼠标悬停在类标题上时  会显示此提示
@property (nullable, copy) NSString *headerToolTip;
//设置此列是否隐藏
@property (getter=isHidden) BOOL hidden;
//设置此列所有行的数据载体视图 如果不设置 默认为NSTextFieldCell
@property (strong) id dataCell;
//为TableView列表提供数据载体视图
- (id)dataCellForRow:(NSInteger)row;
```