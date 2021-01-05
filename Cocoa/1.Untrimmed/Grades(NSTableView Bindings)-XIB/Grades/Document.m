//
//  Document.m
//  Grades
//
//  Created by magic-devel on 2021/1/4.
//

#import "Document.h"

@interface Document ()

@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
        _assignments = @[].mutableCopy;
    }
    return self;
}

+ (BOOL)autosavesInPlace {
    return YES;
}


- (NSString *)windowNibName {
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"Document";
}


- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error if you return nil.
    // Alternatively, you could remove this method and override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
//    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    if (outError) {
        *outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
    }
    return [NSKeyedArchiver archivedDataWithRootObject:_assignments];
}


- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError {
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error if you return NO.
    // Alternatively, you could remove this method and override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you do, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
//    [NSException raise:@"UnimplementedMethod" format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
    if (outError) {
        *outError = [NSError errorWithDomain:NSOSStatusErrorDomain code:unimpErr userInfo:NULL];
    }
    self.assignments = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    return YES;
}


@end
