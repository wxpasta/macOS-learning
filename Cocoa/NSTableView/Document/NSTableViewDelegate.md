# NSTableViewDelegate

```objective-c
//view-base的TableView相关delegate方法
/*
设置每个数据载体的View
*/
- (nullable NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
/*
自定义行视图
*/
- (nullable NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row NS_AVAILABLE_MAC(10_7);
/*
添加一行时会调用的回调
*/
- (void)tableView:(NSTableView *)tableView didAddRowView:(NSTableRowView *)rowView forRow:(NSInteger)row;
/*
移除一行时会调用的回调
*/
- (void)tableView:(NSTableView *)tableView didRemoveRowView:(NSTableRowView *)rowView forRow:(NSInteger)row;

//cell-base的TableView相关delegate方法
/*
cell将要渲染时调用的回调，可以在其中对cell进行定制
*/
- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
/*
设置某个cell是否可以编辑
*/
- (BOOL)tableView:(NSTableView *)tableView shouldEditTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
/*
设置当鼠标悬停在cell上时 显示的提示文案
*/
- (NSString *)tableView:(NSTableView *)tableView toolTipForCell:(NSCell *)cell rect:(NSRectPointer)rect tableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row mouseLocation:(NSPoint)mouseLocation;
/*
当cell的宽度不够显示完全cell的内容时，设置是否允许鼠标放置扩展cell
*/
- (BOOL)tableView:(NSTableView *)tableView shouldShowCellExpansionForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
/*
设置是否加强cell的交互能力，这样一些按钮状态的修改也会触发cell编辑的状态
*/
- (BOOL)tableView:(NSTableView *)tableView shouldTrackCell:(NSCell *)cell forTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;
/*
设置自定义cell
*/
- (nullable NSCell *)tableView:(NSTableView *)tableView dataCellForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row;

//通用的TableView代理方法
/*
设置是否允许修改选中
*/
- (BOOL)selectionShouldChangeInTableView:(NSTableView *)tableView;
/*
设置某行是否可以选中
*/
- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row;
/*
当用户通过键盘或鼠标将要选中某行时，返回设置要选中的行
如果实现了这个方法，上面一个方法将不会被调用
*/
- (NSIndexSet *)tableView:(NSTableView *)tableView selectionIndexesForProposedSelection:(NSIndexSet *)proposedSelectionIndexes;
/*
设置某列是否可以被选中
*/
- (BOOL)tableView:(NSTableView *)tableView shouldSelectTableColumn:(nullable NSTableColumn *)tableColumn;
/*
用户点击列头时调用的方法
*/
- (void)tableView:(NSTableView *)tableView mouseDownInHeaderOfTableColumn:(NSTableColumn *)tableColumn;
/*
用法同上
*/
- (void)tableView:(NSTableView *)tableView didClickTableColumn:(NSTableColumn *)tableColumn;
/*
对列进行拖拽改变顺序时调用的方法
*/
- (void)tableView:(NSTableView *)tableView didDragTableColumn:(NSTableColumn *)tableColumn;
/*
设置行高
*/
- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row;
/*
下面这些方法与行检索有关
*/
- (nullable NSString *)tableView:(NSTableView *)tableView typeSelectStringForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row NS_AVAILABLE_MAC(10_5);
- (NSInteger)tableView:(NSTableView *)tableView nextTypeSelectMatchFromRow:(NSInteger)startRow toRow:(NSInteger)endRow forString:(NSString *)searchString NS_AVAILABLE_MAC(10_5);
- (BOOL)tableView:(NSTableView *)tableView shouldTypeSelectForEvent:(NSEvent *)event withCurrentSearchString:(nullable NSString *)searchString NS_AVAILABLE_MAC(10_5);
/*
设置某行是否绘制成组样式
*/
- (BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row;
/*
调整列宽度
*/
- (CGFloat)tableView:(NSTableView *)tableView sizeToFitWidthOfColumn:(NSInteger)column;
/*
设置是否支持列的移动排序
*/
- (BOOL)tableView:(NSTableView *)tableView shouldReorderColumn:(NSInteger)columnIndex toColumn:(NSInteger)newColumnIndex;
//设置某行向左或向右滑动时要显示的功能按钮
/*
typedef NS_ENUM(NSInteger, NSTableRowActionEdge) {
    NSTableRowActionEdgeLeading, // 左划
    NSTableRowActionEdgeTrailing, // 右划
} NS_ENUM_AVAILABLE_MAC(10_11);
*/
- (NSArray<NSTableViewRowAction *> *)tableView:(NSTableView *)tableView rowActionsForRow:(NSInteger)row edge:(NSTableRowActionEdge)edge NS_AVAILABLE_MAC(10_11);
/*
TableView选中修改时调用
*/
- (void)tableViewSelectionDidChange:(NSNotification *)notification;
/*
TableView列移动完成时调用的函数
*/
- (void)tableViewColumnDidMove:(NSNotification *)notification;
/*
TableView列宽度变化时调用的函数
*/
- (void)tableViewColumnDidResize:(NSNotification *)notification;
/*
TableView选中正在修改时调用的函数
*/
- (void)tableViewSelectionIsChanging:(NSNotification *)notification;
```