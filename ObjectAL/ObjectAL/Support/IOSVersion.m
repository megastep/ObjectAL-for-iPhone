//
//  IOSVersion.m
//  ObjectiveGems
//
//  Created by Karl Stenerud on 10-11-07.
//

#import "IOSVersion.h"
#ifdef __IPHONE_OS_VERSION_MAX_ALLOWED
#import <UIKit/UIKit.h>
#endif

SYNTHESIZE_SINGLETON_FOR_CLASS_PROTOTYPE(IOSVersion);


@implementation IOSVersion

SYNTHESIZE_SINGLETON_FOR_CLASS(IOSVersion);

- (id) init
{
	if(nil != (self = [super init]))
	{
        NSString* versionStr = [UIDevice currentDevice].systemVersion;
        NSArray* versionInfo = [versionStr componentsSeparatedByString:@"."];
        version = [versionInfo[0] intValue];
    }
	return self;
}

@synthesize version;

@end
