//
//  ViewController.m
//  JSPatchDemo
//
//  Created by tropsci on 15/10/19.
//  Copyright © 2015年 topsci. All rights reserved.
//

#import "MainTableViewController.h"
#import "Person.h"

@interface MainTableViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property(nonatomic, strong)NSMutableArray *dataList;
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person1 = [[Person alloc] initWithName:@"Tom" withAge:21];
    Person *person2 = [[Person alloc] initWithName:@"Johee" withAge:32];
    [self.dataList insertObject:person1 atIndex:0];
    [self.dataList insertObject:person2 atIndex:0];
}

- (NSArray *)dataList {
    if (!_dataList) {
        _dataList = [NSMutableArray array];
    }
    return _dataList;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableViewCellIdentifier = @"personReusableID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentifier];
    Person *person = self.dataList[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"Name: %@   Age: %d", person.personName, person.personAge];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Original tableView:didSelectRowAtIndexPath:");
}

@end
