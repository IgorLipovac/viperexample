//
//  CDPerson.h
//  
//
//  Created by Igor Lipovac on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class CDCompany;

@interface CDPerson : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSString * vehicle;
@property (nonatomic, retain) CDCompany *company;

@end
