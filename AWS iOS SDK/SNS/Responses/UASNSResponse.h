//
//  UASNSResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import <Mantle/Mantle.h>
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UASNSDataTypes.h"

@interface UASNSResponse : UAAWSResponse <MTLXMLSerializing>

@property (nonatomic, copy, readonly) NSString *requestID;

@end
