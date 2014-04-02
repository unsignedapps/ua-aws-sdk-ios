//
//  UAIAMListAccountAliasesResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMListAccountAliasesResponse : UAIAMResponse

@property (nonatomic, copy) NSArray *accountAliases;
@property (nonatomic) BOOL isTruncated;
@property (nonatomic, copy) NSString *marker;

/**
 * Retrieves the NSString at the specified index.
**/
- (NSString *)accountAliasAtIndex:(NSUInteger)index;

@end
