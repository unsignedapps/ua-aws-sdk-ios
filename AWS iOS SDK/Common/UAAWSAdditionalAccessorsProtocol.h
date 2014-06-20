//
//  UAAWSAdditionalAccessorsProtocol.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 11/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

@protocol UAAWSAdditionalAccessors <NSObject>


/**
 * Returns a NSDictionary of accessor selector strings to property names.
 *
 * eg. alarmNameAtIndex: => alarmNames
 *
 * This will get called a lot, don't create the NSDictionary each time.
 **/
+ (NSDictionary *)UA_additionalAccessors;

/**
 * Returns a NSDictionary of accessor selector strings to data types.
 *
 * eg. alarmNameAtIndex: => @
 *
 * See the manual on Type Encodings in the ObjC Runtime Programming Guide
 * for a list of possible Type Encodings.
 *
 * This will get called a lot, don't create the NSDictionary each time.
 **/
+ (NSDictionary *)UA_additionalAccessorDataTypes;

@end
