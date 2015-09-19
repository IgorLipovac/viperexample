//
//  LocalListViewController.m
//  viperexample
//
//  Created by Igor Lipovac on 18/09/15.
//  Copyright (c) 2015 Igor Lipovac. All rights reserved.
//

#import "LocalListViewController.h"
#import "LocalListCell.h"

@interface LocalListViewController() <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) id<ListDataSource> dataSource;

@end

@implementation LocalListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Person list";
    
}

- (void)showDataWithDataSource:(id<ListDataSource>)localListDataSource
{
    self.dataSource = localListDataSource;
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource numberOfListItems];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LocalListItem *item = [self.dataSource itemAtIndex:indexPath.row];
    LocalListCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    cell.nameLabel.text = [NSString stringWithFormat:@"%@ %@", item.firstName, item.lastName];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate didSelectItemOnIndex:indexPath.row];
}


- (IBAction)addNewPersonAction:(id)sender {
    [self.delegate didPressAddNewPerson];
}

@end
