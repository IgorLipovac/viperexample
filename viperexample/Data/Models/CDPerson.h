//
//  CDPerson.h
//  
//
//  Created by Igor Lipovac on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "CDCompany.h"
#import "Person.h"

@class CDCompany;

@interface CDPerson : NSManagedObject <Person>

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * vehicle;
@property (nonatomic, retain) CDCompany *company;

@end
