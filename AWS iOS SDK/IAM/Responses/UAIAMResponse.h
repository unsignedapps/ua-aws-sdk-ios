//
//  UAIAMResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAIAMDataTypes.h"

@interface UAIAMResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, strong) NSString *requestID;

@end
