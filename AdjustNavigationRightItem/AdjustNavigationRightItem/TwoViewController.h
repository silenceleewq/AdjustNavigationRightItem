//
//  TwoViewController.h
//  AdjustNavigationRightItem
//
//  Created by lirenqiang on 2017/1/12.
//  Copyright © 2017年 Ninja. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TwoFlexAlignment)
{
    TwoFlexAlignmentRight = 0,
    TwoFlexAlignmentLeft = 1,
};

@interface TwoViewController : UIViewController

@property (nonatomic, assign) NSInteger width;

@property (nonatomic, assign) TwoFlexAlignment alignment;

@end
