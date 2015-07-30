//
//  CI_TestGesture.m
//  CIBOT_1
//
//  Created by Dang Thai Son on 5/26/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import "CI_TestGesture.h"

@implementation CI_TestGesture
- (void)beforeEach {
    [tester tapViewWithAccessibilityLabel:@"TableViews"];
}
- (void)afterEach {
    [tester tapViewWithAccessibilityLabel:@"Back"];
}
- (void)testRotateDevice {
    [system simulateDeviceRotationToOrientation:UIDeviceOrientationLandscapeLeft];
    [tester waitForTimeInterval:2];

    [system simulateDeviceRotationToOrientation:UIDeviceOrientationLandscapeRight];
    [tester waitForTimeInterval:2];

    [system simulateDeviceRotationToOrientation:UIDeviceOrientationPortrait];
    [tester waitForTimeInterval:2];

}
@end
