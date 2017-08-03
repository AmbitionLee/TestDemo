//
//  PDAPlaceOrderTableViewCell.m
//  PdaHuaMaster
//
//  Created by 岳俊杰 on 2017/7/21.
//  Copyright © 2017年 tdhy. All rights reserved.
//

#import "PDAPlaceOrderTableViewCell.h"

@implementation PDAPlaceOrderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.orderTextField.delegate = self;
     self.weightTF.delegate = self;
     self.volumeTF.delegate = self;
     self.numTF.delegate = self;
}

-(void)setData:(RowModel *)data
{
    _data = data;
    if (data.indexP.section == 2) {
        self.goodsHeadName.text = data.keyTitle;
        self.weightTF.text = data.weight;
        self.volumeTF.text = data.volume;
        self.numTF.text = data.num;
    }else if (data.indexP.section == 4)
    {
        self.remarkTextView.text = data.content;
    }
    else{
        self.headName .text = data.keyTitle;
        self.orderTextField.text = data.content;
    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField == self.orderTextField) {
        self.data.content = textField.text;
    }else if (textField == self.weightTF)
    {
        self.data.weight = textField.text;
    }else if (textField == self.volumeTF)
    {
        self.data.volume = textField.text;
    }else if (textField == self.numTF)
    {
        self.data.num = textField.text;
    }
}
@end
