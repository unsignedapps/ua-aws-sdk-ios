//
//  UAEC2DetachVolumeResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2DetachVolumeResponse : UAEC2Response

@property (nonatomic, copy) NSString *volumeID;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *device;
@property (nonatomic) UAEC2AttachmentState state;
@property (nonatomic, copy) NSDate *attachTime;

@end
