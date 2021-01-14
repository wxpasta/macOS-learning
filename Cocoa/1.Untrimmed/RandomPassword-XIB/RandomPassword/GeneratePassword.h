//
//  GeneratePassword.h
//  RandomPassword
//
//  Created by magic-devel on 2021/1/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GeneratePassword : NSObject

+ (NSString *)generateRandomStringWithLength:(NSUInteger)length;

@end

NS_ASSUME_NONNULL_END
