//
//  CDCompany.h
//  
//
//  Created by Igor Lipovac on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Company.h"


@interface CDCompany : NSManagedObject <Company>

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * country;

@end
