//
//  UADDBResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UADDBDataTypes.h"

@interface UADDBResponse : UAAWSResponse <UAMTLJSONSerializing>

@property (nonatomic, copy) NSString *requestID;

@end
