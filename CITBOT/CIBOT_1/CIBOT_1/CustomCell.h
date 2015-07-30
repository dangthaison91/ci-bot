//
//  CustomCell.h
//  CIBOT_1
//
//  Created by sondt on 2/8/15.
//  Copyright (c) 2015 sondt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *cellCall;
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (strong, nonatomic) NSString *info;
@property (assign, nonatomic) NSInteger index;
@end
