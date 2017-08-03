//
//  aaaaaTableViewCell.h
//  textField
//
//  Created by Lee on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "asdf.h"
@interface aaaaaTableViewCell : UITableViewCell
@property (nonatomic,strong) asdf *data;
@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFieldArr;

@end
