//
//  ImageViewController.m
//  CustomTableViewAppOM
//
//  Created by Glbitm on 8/16/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import "ImageViewController.h"
#import "ViewController.h"

@interface ImageViewController ()

@end



@implementation ImageViewController

@synthesize webStringUrl;

- (void)viewDidLoad {
    [super viewDidLoad];
    _theNewImg.image = _imageData;
    _theNewLabel.text = _labelData;
    
//    _webStringUrl = @"http://www.quora.com";
//    [_webStringUrl setString:]
    NSURL *url = [NSURL URLWithString:webStringUrl];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    _theNewWeb.delegate=self;
    [_theNewWeb loadRequest:urlRequest];
    
    switch (_myTag) {
        case 1:
            _theNewImg.hidden=NO;
            _theNewMap.hidden=YES;
            _theNewWeb.hidden =YES;
            break;
        case 2:
            _theNewImg.hidden=YES;
            _theNewMap.hidden=NO;
            _theNewWeb.hidden =YES;
            break;
            
        case 3:
            _theNewImg.hidden=YES;
            _theNewMap.hidden=YES;
            _theNewWeb.hidden =NO;
            break;

        default:
            _theNewImg.hidden=YES;
            _theNewMap.hidden=YES;
            _theNewWeb.hidden =YES;
            break;
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
