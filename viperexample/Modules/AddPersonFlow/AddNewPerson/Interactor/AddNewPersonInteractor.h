//
//  AddNewPersonInteractor.h
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddNewPersonItem.h"

@protocol AddNewPersonInteractor <NSObject>

- (void)storeNewPersonForItem:(AddNewPersonItem *)item completion:(void (^)(BOOL success))completion;

@end
