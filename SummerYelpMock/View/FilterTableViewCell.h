//
//  FilterTableViewCell.h
//  SummerYelpMock
//
//  Created by matianju on 9/12/17.
//  Copyright © 2017 TianjuMa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpFilterDataModel.h"

@interface FilterTableViewCell : UITableViewCell

- (void)updateDataModel:(YelpFilterDataModel *)dataModel;

@end
