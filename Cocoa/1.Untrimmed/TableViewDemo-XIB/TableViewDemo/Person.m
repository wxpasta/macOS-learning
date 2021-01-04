//
//  Person.m
//  TableViewDemo
//
//  Created by magic-devel on 2020/12/31.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Yoda";
        _age = 300;
    }
    return self;
}
@end
