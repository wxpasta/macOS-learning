//
//  TableViewController.m
//  TableViewDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "TableViewController.h"
#import <Cocoa/Cocoa.h>
#import "Person.h"
@interface TableViewController ()<NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;

@property (nonatomic, strong) NSMutableArray *list;

@end


@implementation TableViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = @[].mutableCopy;
    }
    return self;
}

/*
 设置Content Mode为Cell Bassed
 */
#pragma mark -
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.list.count;
}

- (id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(NSInteger)row {
    Person *p = self.list[row];
    NSString *identifier = tableColumn.identifier;
    return [p valueForKey:identifier];
}

- (void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    Person *p = [self.list objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    [p setValue:object forKey:identifier];
}

- (IBAction)add:(id)sender {
    Person *person = [[Person alloc] init];
    [self.list addObject:person];
    [self.tableView reloadData];
}

- (IBAction)remove:(id)sender {
    NSInteger row = [self.tableView selectedRow];
    [self.tableView abortEditing];
    if (row != -1) {
        [self.list removeObjectAtIndex:row];
        [self.tableView reloadData];
    }
}

@end
