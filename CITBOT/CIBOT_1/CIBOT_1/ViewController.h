//
//  ViewController.h
//  CIBOT_1
//
//  Created by sondt on 2/5/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSArray *models;
    __weak IBOutlet UIButton *btnReverse;
    __weak IBOutlet UITextField *textInput;
    __weak IBOutlet UISegmentedControl *imageSegment;
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UISlider *imageSlider;
}


@end

