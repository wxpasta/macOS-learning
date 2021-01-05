//
//  Assignment.h
//  Grades
//
//  Created by magic-devel on 2021/1/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Assignment : NSObject<NSCoding>

@property (copy) NSString *name;
@property NSInteger grade;

@end

NS_ASSUME_NONNULL_END
