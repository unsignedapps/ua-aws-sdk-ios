//
//  UAEC2AttachVolumeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2AttachVolumeResponse : UAEC2Response

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *device;
@property (nonatomic) UAEC2AttachmentState state;
@property (nonatomic, copy) NSDate *attachTime;
@property (nonatomic) BOOL deleteOnTermination;

@end
