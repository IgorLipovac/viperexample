
#import "NSObject+Lifetime.h"
#import <objc/runtime.h>

static char appendObjectKey;

@implementation NSObject (Lifetime)

+ (void)makeObject:(id)anObject haveTheSameLifetimeAsObject:(id)hostObject
{
    objc_setAssociatedObject(hostObject, &appendObjectKey, anObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (void)cancelObjectLifetimeOnObject:(id)hostObject
{
    objc_setAssociatedObject(hostObject, &appendObjectKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
