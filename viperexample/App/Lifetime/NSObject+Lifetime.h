
#import <Foundation/Foundation.h>

@interface NSObject (Lifetime)

+ (void)makeObject:(id)anObject haveTheSameLifetimeAsObject:(id)hostObject;
+ (void)cancelObjectLifetimeOnObject:(id)hostObject;

@end
