//
//  CustomMapTableViewCell.h
//  CustomTableViewAppOM
//
//  Created by Glbitm on 8/12/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CustomMapTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property (weak, nonatomic) IBOutlet UILabel *myMapLabel;

@end
