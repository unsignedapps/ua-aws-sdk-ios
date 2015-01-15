//
//  NSError+UAMTLModelException.h
//  Mantle
//
//  Created by Robert Böhnke on 7/6/13.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

@import Foundation;

@interface NSError (UAMTLModelException)

// Creates a new error for an exception that occured during updating an
// UAMTLModel.
//
// exception - The exception that was thrown while updating the model.
//             This argument must not be nil.
//
// Returns an error that takes its localized description and failure reason
// from the exception.
+ (instancetype)UAMTL_modelErrorWithException:(NSException *)exception;

@end
