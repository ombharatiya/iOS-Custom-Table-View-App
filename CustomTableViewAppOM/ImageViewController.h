//
//  ImageViewController.h
//  CustomTableViewAppOM
//
//  Created by Glbitm on 8/16/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ImageViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *theNewImg;
@property (strong, nonatomic) UIImage *imageData;
@property (strong, nonatomic) IBOutlet UIWebView *theNewWeb;
@property (strong, nonatomic) IBOutlet MKMapView *theNewMap;
@property (strong, nonatomic) IBOutlet UILabel *theNewLabel;
@property (strong, nonatomic) NSString *labelData;

@property (strong, nonatomic) NSString *webStringUrl;
//@property (strong, nonatomic) NSString *imgLabelData;
//@property (strong, nonatomic) NSString *mapLabelData;
//@property (strong, nonatomic) NSString *webLabelData;
@property (nonatomic) NSInteger myTag;


@end
