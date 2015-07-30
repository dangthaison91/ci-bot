//
//  CI_TestTapping.m
//  CIBOT_1
//
//  Created by Dang Thai Son on 5/25/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import "CI_TestTapping.h"

@implementation CI_TestTapping
- (void)beforeEach {
    [tester tapViewWithAccessibilityLabel:@"Tapping"];
}
- (void)afterEach {
    [tester tapViewWithAccessibilityLabel:@"Back"];
}
//- (void)testReverse {
//
//    [tester enterText:@"123456" intoViewWithAccessibilityLabel:@"inputText"];
//
//    UITextField *text = (UITextField*)[tester waitForViewWithAccessibilityLabel:@"inputText"];
//    NSString *oldString = text.text;
//    // reverse text
//    [tester waitForTimeInterval:1.0];
//    [tester tapViewWithAccessibilityLabel:@"btnReverse"];
//
//    // chheck if text is reversed
//    text = (UITextField*)[tester waitForViewWithAccessibilityLabel:@"inputText"];
//    XCTAssertFalse(![oldString isEqualToString:@"123"], @"Failed");
//}
//- (void)testClear {
//    [tester enterText:@"123456" intoViewWithAccessibilityLabel:@"inputText"];
//    [tester waitForTimeInterval:1.0];
//    [tester tapViewWithAccessibilityLabel:@"btnClear"];
//
//    UITextField *text = (UITextField*)[tester waitForViewWithAccessibilityLabel:@"inputText"];
//    XCTAssertTrue([text.text isEqualToString:@""], @"FAIL");
//
//}
- (void)testAlert {
    [tester tapViewWithAccessibilityLabel:@"btnShowAlert"];
    [tester waitForViewWithAccessibilityLabel:@"Successful"];
    [tester tapViewWithAccessibilityLabel:@"YES"];

    [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Successful"];
    [tester waitForTimeInterval:1];
    [tester waitForViewWithAccessibilityLabel:@"Second Alert"];
    [tester waitForTimeInterval:1];
    [tester tapViewWithAccessibilityLabel:@"YES"];
}
//// Test Slider
- (void)testSlider {
    [tester setValue:1.5 forSliderWithAccessibilityLabel:@"imageSlider"];
    [tester waitForTimeInterval:1.0];


    [tester setValue:2.0 forSliderWithAccessibilityLabel:@"imageSlider"];
    [tester waitForTimeInterval:1.0];

    [tester setValue:1.5 forSliderWithAccessibilityLabel:@"imageSlider"];
    [tester waitForTimeInterval:1.0];

    [tester setValue:1.0 forSliderWithAccessibilityLabel:@"imageSlider"];
    [tester waitForTimeInterval:1.0];
}
- (void)testSegmentControl {
    [tester waitForViewWithAccessibilityLabel:@"imageSegment"];
    [tester tapViewWithAccessibilityLabel:@"3"];
    [tester waitForTimeInterval:1.0];

    [tester waitForViewWithAccessibilityLabel:@"imageSegment"];
    [tester tapViewWithAccessibilityLabel:@"3"];
    [tester waitForTimeInterval:1.0];

    [tester waitForViewWithAccessibilityLabel:@"imageSegment"];
    [tester tapViewWithAccessibilityLabel:@"4"];
    [tester waitForTimeInterval:1.0];

    [tester waitForViewWithAccessibilityLabel:@"imageSegment"];
    [tester tapViewWithAccessibilityLabel:@"2"];
    [tester waitForTimeInterval:1.0];

}

@end
