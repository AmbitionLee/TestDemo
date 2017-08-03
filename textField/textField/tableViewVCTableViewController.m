//
//  tableViewVCTableViewController.m
//  textField
//
//  Created by Lee on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import "tableViewVCTableViewController.h"
#import "asdf.h"
#import "aaaaaTableViewCell.h"
@interface tableViewVCTableViewController ()<UITextFieldDelegate>
@property (nonatomic,strong)NSMutableArray  *arr;
@end

@implementation tableViewVCTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arr = [[NSMutableArray alloc] init];
    [self.tableView registerNib:[UINib nibWithNibName:@"aaaaaTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    self.tableView.rowHeight = 100;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    asdf *a = [[asdf alloc] init];
    a.aa = @"";
    a.bb = @"";
    a.cc = @"";
    a.dd = @"";
    [self.arr addObject:a];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data sourc
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    aaaaaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    asdf *a = [self.arr objectAtIndex:indexPath.row];
    cell.data = a;
    return cell;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"%@",textField.text);
}


@end
