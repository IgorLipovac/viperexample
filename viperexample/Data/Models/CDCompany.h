//
//  CDCompany.h
//  
//
//  Created by Igor Lipovac on 18/09/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CDCompany : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * country;

@end
