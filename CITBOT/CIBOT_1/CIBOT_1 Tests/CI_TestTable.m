//
//  CI_TestTable.m
//  CIBOT_1
//
//  Created by Dang Thai Son on 5/26/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import "CI_TestTable.h"

@implementation CI_TestTable
- (void)beforeEach {
    [tester tapViewWithAccessibilityLabel:@"TableViews"];
}
- (void)afterEach {
    [tester tapViewWithAccessibilityLabel:@"NO"];
    [tester tapViewWithAccessibilityLabel:@"Back" traits:UIAccessibilityTraitButton];
}
- (void)testSelectFirstCell {
    // Test tap on firt tableview cell
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
    [tester waitForViewWithAccessibilityLabel:@"Cell Clicked"];
}
- (void)testSelectLastCell {
    [tester tapRowAtIndexPath:[NSIndexPath indexPathForRow:19 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
    [tester waitForViewWithAccessibilityLabel:@"Cell Clicked"];
}
- (void)testClickCallButton {
    [tester waitForCellAtIndexPath:[NSIndexPath indexPathForRow:1 inSection:0] inTableViewWithAccessibilityIdentifier:@"TestTableViews"];
    [tester tapViewWithAccessibilityLabel:@"callButton" traits:UIAccessibilityTraitButton];
}

@end
