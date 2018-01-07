//
//  customWebTableViewCell.h
//  CustomTableViewAppOM
//
//  Created by Glbitm on 8/11/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customWebTableViewCell : UITableViewCell<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (weak, nonatomic) IBOutlet UILabel *myWebLabel;

@end
