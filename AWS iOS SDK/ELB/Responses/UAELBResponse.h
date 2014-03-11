//
//  UAELBResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAELBDataTypes.h"

@interface UAELBResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, strong) NSString *requestID;

@end
