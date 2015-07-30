//
//  TestTableView.m
//  CIBOT_1
//
//  Created by sondt on 2/7/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import "TestTableView.h"
#import "CustomCell.h"
@interface TestTableView ()

@end

@implementation TestTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    model = @[@"linh chi 1.jpg", @"linh chi 2.jpg", @"khanh my 1.jpg", @"khanh my 2.jpg", @"khanh my 3.jpg", @"mai phuong thuy 1.jpg"];
    
    UINib *nib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"kCustomCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 256;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    NSInteger index = arc4random() % 6;
    cell.cellImage.image = [UIImage imageNamed:(NSString*)[model objectAtIndex:index]];
    cell.info = [[(NSString*)[model objectAtIndex:index] stringByDeletingPathExtension] uppercaseString];
    cell.index = indexPath.row;
    cell.cellCall.tag = indexPath.row;
    [cell.cellCall addTarget:self action:@selector(callAGirl:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cell Clicked" message:cell.info delegate:nil cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    [alert show];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}
- (void)callAGirl:(id)sender {
    UIButton *callButton = (UIButton*)sender;
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:callButton.tag inSection:0];
    CustomCell *cell = (CustomCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Call Clicked" message:cell.info delegate:nil cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    [alert show];
}
@end
