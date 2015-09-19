//
//  AddNewPersonViewController.h
//  viperexample
//
//  Created by Igor Lipovac on 20/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewPersonView.h"

@interface AddNewPersonViewController : UIViewController <AddNewPersonView>

@property (assign, nonatomic) id<AddNewPersonViewDelegate> delegate;

@end
