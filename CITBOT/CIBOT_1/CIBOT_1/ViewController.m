//
//  ViewController.m
//  CIBOT_1
//
//  Created by sondt on 2/5/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate, UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    models = @[@"linh chi 1.jpg", @"linh chi 2.jpg", @"khanh my 2.jpg", @"mai phuong thuy 1.jpg"];
    imageView.image = [UIImage imageNamed:(NSString*)[models objectAtIndex:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)reverseString:(id)sender {
    NSString *myString = textInput.text;
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:[myString length]];
    
    [myString enumerateSubstringsInRange:NSMakeRange(0,[myString length])
                                 options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                  [reversedString appendString:substring];
                              }];
    textInput.text = reversedString;
}

- (IBAction)showAlert:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Successful" message:@"Reversed String" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
    [alert show];
}

- (IBAction)clearString:(id)sender {
    textInput.text = @"";
}
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Second Alert" message:@"YES Clicked" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    }
}
- (IBAction)changeImage:(id)sender {
    imageView.image = [UIImage imageNamed:(NSString*)[models objectAtIndex:imageSegment.selectedSegmentIndex]];
}
- (IBAction)zoomImage:(id)sender {
    [imageView setTransform:CGAffineTransformMakeScale(imageSlider.value, imageSlider.value)];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
@end
