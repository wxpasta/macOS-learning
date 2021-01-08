# NSTableView

```objective-c
//初始化方法
- (instancetype)initWithFrame:(NSRect)frameRect;
- (nullable instancetype)initWithCoder:(NSCoder *)coder;

//设置代理
@property (nullable, weak) id <NSTableViewDataSource> dataSource;
@property (nullable, weak) id <NSTableViewDelegate> delegate;

//设置TableView的头视图 会被列头图就行覆盖
@property (nullable, strong) NSTableHeaderView *headerView;
//设置头图右侧视图 可以自定义图标
@property (nullable, strong) NSView *cornerView;
//设置是否允许列拖拽排序
@property BOOL allowsColumnReordering;
//设置是否允许调整列宽度
@property BOOL allowsColumnResizing;
//调整列宽度的风格
/*
typedef NS_ENUM(NSUInteger, NSTableViewColumnAutoresizingStyle) {
    //不可调整
    NSTableViewNoColumnAutoresizing = 0,
    //平分
    NSTableViewUniformColumnAutoresizingStyle,
    //从后往前调整
    NSTableViewSequentialColumnAutoresizingStyle,  
    //从前往后调整
    NSTableViewReverseSequentialColumnAutoresizingStyle, 
    //最后一列可调整
    NSTableViewLastColumnOnlyAutoresizingStyle,
    //第一列可调整
    NSTableViewFirstColumnOnlyAutoresizingStyle
};
*/
@property NSTableViewColumnAutoresizingStyle columnAutoresizingStyle;
//设置分割线风格
/*
typedef NS_OPTIONS(NSUInteger, NSTableViewGridLineStyle) {
    //无分割线
    NSTableViewGridNone                    = 0,
    //竖直分割线
    NSTableViewSolidVerticalGridLineMask   = 1 << 0,
    //水平分割线
    NSTableViewSolidHorizontalGridLineMask = 1 << 1,
    //水平虚线分割线
    NSTableViewDashedHorizontalGridLineMask ,
};
*/
@property NSTableViewGridLineStyle gridStyleMask;
//设置cell之间的间隔 需要设置为NSSize对象
@property NSSize intercellSpacing;
//是否开启斑马纹
@property BOOL usesAlternatingRowBackgroundColors;
//背景色
@property (copy) NSColor *backgroundColor;
//设置分割线颜色
@property (copy) NSColor *gridColor;
//设置行尺寸风格
/*
typedef NS_ENUM(NSInteger, NSTableViewRowSizeStyle) {
    //默认
    NSTableViewRowSizeStyleDefault = -1,
    //自定义
    NSTableViewRowSizeStyleCustom = 0,
    //小尺寸风格
    NSTableViewRowSizeStyleSmall = 1,
    //中等尺寸风格
    NSTableViewRowSizeStyleMedium = 2,
    //大尺寸风格
    NSTableViewRowSizeStyleLarge = 3,
} NS_ENUM_AVAILABLE_MAC(10_7);
*/
@property NSTableViewRowSizeStyle rowSizeStyle;
//行高
@property CGFloat rowHeight;
//获取所有列对象
@property (readonly, copy) NSArray<NSTableColumn *> *tableColumns;
//获取列数
@property (readonly) NSInteger numberOfColumns;
//获取行数
@property (readonly) NSInteger numberOfRows;
//添加一列
- (void)addTableColumn:(NSTableColumn *)tableColumn;
//移除一列
- (void)removeTableColumn:(NSTableColumn *)tableColumn;
//移动列
- (void)moveColumn:(NSInteger)oldIndex toColumn:(NSInteger)newIndex;
//根据id获取列的下标
- (NSInteger)columnWithIdentifier:(NSString *)identifier;
//根据id获取列对象
- (nullable NSTableColumn *)tableColumnWithIdentifier:(NSString *)identifier;
//滚动到指定行可见
- (void)scrollRowToVisible:(NSInteger)row;
//滚动到指定列可见
- (void)scrollColumnToVisible:(NSInteger)column;
//重新加载数据
- (void)reloadData;
//重新加载指定位置的数据
- (void)reloadDataForRowIndexes:(NSIndexSet *)rowIndexes columnIndexes:(NSIndexSet *)columnIndexes;
//获取编辑的列
@property (readonly) NSInteger editedColumn;
//获取编辑的行
@property (readonly) NSInteger editedRow;
//获取点击的列
@property (readonly) NSInteger clickedColumn;
//获取点击的行
@property (readonly) NSInteger clickedRow;
//设置列头提示图片
- (void)setIndicatorImage:(nullable NSImage *)image inTableColumn:(NSTableColumn *)tableColumn;
//获取列头提示图片
- (nullable NSImage *)indicatorImageInTableColumn:(NSTableColumn *)tableColumn;

//下面这些方法与列表拖拽有关
@property BOOL verticalMotionCanBeginDrag;
- (BOOL)canDragRowsWithIndexes:(NSIndexSet *)rowIndexes atPoint:(NSPoint)mouseDownPoint;
- (NSImage *)dragImageForRowsWithIndexes:(NSIndexSet *)dragRows tableColumns:(NSArray<NSTableColumn *> *)tableColumns event:(NSEvent *)dragEvent offset:(NSPointPointer)dragImageOffset;
- (void)setDraggingSourceOperationMask:(NSDragOperation)mask forLocal:(BOOL)isLocal;
- (void)setDropRow:(NSInteger)row dropOperation:(NSTableViewDropOperation)dropOperation;

//下面这些方法与列表选中有关
//是否支持多选
@property BOOL allowsMultipleSelection;
//是否允许都不选中
@property BOOL allowsEmptySelection;
//是否支持选中列 如果设置为YES 点击列头会将整列选中
@property BOOL allowsColumnSelection;
//全选 用于子类重写
- (void)selectAll:(nullable id)sender;
//全不选 用于子类重写
- (void)deselectAll:(nullable id)sender;
//进行列选中
- (void)selectColumnIndexes:(NSIndexSet *)indexes byExtendingSelection:(BOOL)extend;
//进行行选中
- (void)selectRowIndexes:(NSIndexSet *)indexes byExtendingSelection:(BOOL)extend;
//获取所有选中列index
@property (readonly, copy) NSIndexSet *selectedColumnIndexes;
//获取所有选中行index
@property (readonly, copy) NSIndexSet *selectedRowIndexes;
//取消某列的选中
- (void)deselectColumn:(NSInteger)column;
//取消某行的选中
- (void)deselectRow:(NSInteger)row;
//判断某列是否被选中
- (BOOL)isColumnSelected:(NSInteger)column;
//判断某行是否被选中
- (BOOL)isRowSelected:(NSInteger)row;
//获取选中的列数
@property (readonly) NSInteger numberOfSelectedColumns;
//获取选中的行数
@property (readonly) NSInteger numberOfSelectedRows;
//获取某列的位置尺寸
- (NSRect)rectOfColumn:(NSInteger)column;
//获取某行的位置尺寸
- (NSRect)rectOfRow:(NSInteger)row;
//获取某个范围内的列
- (NSIndexSet *)columnIndexesInRect:(NSRect)rect;
//获取某个范围内的行
- (NSRange)rowsInRect:(NSRect)rect;
//获取包含某个点的列
- (NSInteger)columnAtPoint:(NSPoint)point;
//获取包含某个点的行
- (NSInteger)rowAtPoint:(NSPoint)point;
//获取某个cell的位置尺寸
- (NSRect)frameOfCellAtColumn:(NSInteger)column row:(NSInteger)row;
//获取某个位置的View，用于view-base
- (nullable __kindof NSView *)viewAtColumn:(NSInteger)column row:(NSInteger)row makeIfNecessary:(BOOL)makeIfNecessary;
//获取某行的视图 用于view-base
- (nullable __kindof NSTableRowView *)rowViewAtRow:(NSInteger)row makeIfNecessary:(BOOL)makeIfNecessary;
//获取某个View所在的行 用于view-base
- (NSInteger)rowForView:(NSView *)view;
//获取某个View所在的列 用于view-base
- (NSInteger)columnForView:(NSView *)view;
//创建一个用于渲染的View 用于view-base
- (nullable __kindof NSView *)makeViewWithIdentifier:(NSString *)identifier owner:(nullable id)owner;

//下面这些方法用来根据列表数据
//开始更新
- (void)beginUpdates NS_AVAILABLE_MAC(10_7);
//结束更新
- (void)endUpdates NS_AVAILABLE_MAC(10_7);
//插入行
- (void)insertRowsAtIndexes:(NSIndexSet *)indexes withAnimation:(NSTableViewAnimationOptions)animationOptions NS_AVAILABLE_MAC(10_7);
//删除行
- (void)removeRowsAtIndexes:(NSIndexSet *)indexes withAnimation:(NSTableViewAnimationOptions)animationOptions NS_AVAILABLE_MAC(10_7);
//移动行
- (void)moveRowAtIndex:(NSInteger)oldIndex toIndex:(NSInteger)newIndex NS_AVAILABLE_MAC(10_7);
//隐藏行
- (void)hideRowsAtIndexes:(NSIndexSet *)indexes withAnimation:(NSTableViewAnimationOptions)rowAnimation NS_AVAILABLE_MAC(10_11);
//取消隐藏行
- (void)unhideRowsAtIndexes:(NSIndexSet *)indexes withAnimation:(NSTableViewAnimationOptions)rowAnimation NS_AVAILABLE_MAC(10_11);
//所有隐藏状态的行
@property (readonly, copy) NSIndexSet *hiddenRowIndexes;
```