//
//  GeneratePassword.m
//  RandomPassword
//
//  Created by magic-devel on 2021/1/8.
//

#import "GeneratePassword.h"

@implementation GeneratePassword

+ (NSString *)generateRandomStringWithLength:(NSUInteger)length {
    NSMutableString *string = @"".mutableCopy;
    for (NSInteger i = 0; i< length; i++ ) {
        [string appendString:[self generateRandomCharacter]];
    }
    return string;
}

+ (NSString *)generateRandomCharacter {
    NSString *characters = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < [characters length]; i++) {
        [array addObject:[NSString stringWithFormat:@"%C", [characters characterAtIndex:i]]];
    }
    uint32_t index = arc4random_uniform((uint32_t)array.count);
    return array[index];
}

@end
