//
//  ViewController.m
//  QLZ_JSONModel
//
//  Created by 张庆龙 on 16/9/17.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    itemsArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < 10; i++) {
        NSDictionary *dict = @{@"hello" : @"hello", @"name" : @"测试", @"age" : @(i * 10), @"sex" : @"1", @"father" : @{@"name" : @"father", @"age" : @(i + 20), @"sex" : @"1", @"father" : @{@"name" : @"fatherfather", @"age" : @(i + 30), @"sex" : @"1"}}, @"mother" : @{@"name" : @"mother", @"age" : @(i + 15), @"sex" : @"0"}, @"cousins" : @[@{@"name" : @"cousion1", @"age" : @(i + 5), @"sex" : @"1"}, @{@"name" : @"cousion2", @"age" : @(i + 5), @"sex" : @"1"}, @{@"name" : @"cousion3", @"age" : @(i + 5), @"sex" : @"1"}]};
        [array addObject:dict];
    }
    NSArray *userArray = [QLZ_JSONModelArray JSONWithClass:[User class] json:array];
    [itemsArray addObjectsFromArray:userArray];
    
    for (User *user in itemsArray) {
        NSLog(@"%@", [user transToDictionary]);
    }
    
    databaseTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    databaseTableView.delegate = self;
    databaseTableView.dataSource = self;
    [self.view addSubview:databaseTableView];
}

#pragma mark UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *NameCell = @"NameCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NameCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:NameCell];
    }
    User *user = itemsArray[indexPath.row];
    cell.textLabel.text = user.username;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", user.age];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
