//
//  UAEC2Response.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "UAAWSResponse.h"
#import <Mantle/Mantle.h>
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAEC2DataTypes.h"

@interface UAEC2Response : UAAWSResponse <MTLXMLSerializing>

@property (nonatomic, strong) NSString *requestID;

@end
