//
//  Assignment.m
//  Grades
//
//  Created by magic-devel on 2021/1/4.
//

#import "Assignment.h"

@implementation Assignment

- (instancetype)init {
    if (self = [super init]) {
        _name = @"Calc Quiz";
        _grade = 95;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _grade = [aDecoder decodeIntegerForKey:@"grade"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeInteger:self.grade forKey:@"grade"];
}

@end
