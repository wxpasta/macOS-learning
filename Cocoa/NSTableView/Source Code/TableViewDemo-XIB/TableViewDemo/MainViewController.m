//
//  MainViewController.m
//  TableViewDemo
//
//  Created by magic-devel on 2021/1/8.
//

#import "MainViewController.h"

@interface MainViewController ()<NSTableViewDelegate,NSTableViewDataSource>

@end

@implementation MainViewController

{
    NSTableView * _tableView;
    NSMutableArray * _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _dataArray = [NSMutableArray array];
    for (int i=0; i<20; i++) {
        [_dataArray addObject:[NSString stringWithFormat:@"%d行数据",i]];
    }
    NSScrollView * scrollView    = [[NSScrollView alloc] init];
    scrollView.hasVerticalScroller  = YES;
    scrollView.frame = self.view.bounds;
    [self.view addSubview:scrollView];
    _tableView = [[NSTableView alloc]initWithFrame:self.view.bounds];
    NSTableColumn * column = [[NSTableColumn alloc]initWithIdentifier:@"test"];
    column.title = @"模拟数据";
    // 添加一列
    [_tableView addTableColumn:column];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView reloadData];
    scrollView.contentView.documentView = _tableView;
}

/// 设置行数 通用
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return _dataArray.count;
}

/*
如果使用cell-base的TableView视图，这个方法是必须实现的，其为要渲染的cell提供数据
*/
-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    return _dataArray[row];
}

@end
