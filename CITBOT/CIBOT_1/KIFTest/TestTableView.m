////
////  TestTableView.m
////  CIBOT_1
////
////  Created by sondt on 2/8/15.
////  Copyright (c) 2015 sondt. All rights reserved.
////
//
//#import "TestTableView.h"
//
//@implementation TestTableView
//- (void)beforeEach {
//    [tester tapViewWithAccessibilityLabel:@"TableViews"];
//}
//- (void)afterEach {
//    [tester tapViewWithAccessibilityLabel:@"NO"];
//    [tester tapViewWithAccessibilityLabel:@"Back" traits:UIAccessibilityTraitButton];
//}
//- (void)testSelectFirstCell {
//    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
//    [tester waitForViewWithAccessibilityLabel:@"Cell Clicked"];
//}
//- (void)testSelectLastCell {
//    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:19 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
//    [tester waitForViewWithAccessibilityLabel:@"Cell Clicked"];
//}
//- (void)testClickCallButton {
//    [tester waitForCellAtIndexPath:[NSIndexPath indexPathForRow:1 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
//    [tester tapViewWithAccessibilityLabel:@"callButton" traits:UIAccessibilityTraitButton];
//}
//@end
