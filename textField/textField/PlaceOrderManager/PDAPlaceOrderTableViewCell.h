//
//  PDAPlaceOrderTableViewCell.h
//  PdaHuaMaster
//
//  Created by 岳俊杰 on 2017/7/21.
//  Copyright © 2017年 tdhy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RowModel.h"
@interface PDAPlaceOrderTableViewCell : UITableViewCell<UITextFieldDelegate>


@property (nonatomic,strong) RowModel *data;

@property (weak, nonatomic) IBOutlet UILabel *headName;
@property (weak, nonatomic) IBOutlet UITextField *orderTextField;

@property (weak, nonatomic) IBOutlet UILabel *goodsHeadName;

@property (weak, nonatomic) IBOutlet UITextField *goodsDetailsTF;
@property (weak, nonatomic) IBOutlet UITextField *weightTF;
@property (weak, nonatomic) IBOutlet UITextField *volumeTF;
@property (weak, nonatomic) IBOutlet UITextField *numTF;


@property (weak, nonatomic) IBOutlet UITextView *remarkTextView;

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *textFieldArray;

@end
