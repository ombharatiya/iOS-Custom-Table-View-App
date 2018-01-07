//
//  ViewController.m
//  CustomTableViewAppOM
//
//  Created by Glbitm on 8/11/17.
//  Copyright © 2017 Glbitm. All rights reserved.
//

#import "ViewController.h"
#import "customTableViewCell.h"
#import "CustomMapTableViewCell.h"
#import "customWebTableViewCell.h"
#import "ImageViewController.h"


@interface ViewController ()<UIWebViewDelegate>
{
//    AGSTiledMapServiceLayer *tiledLayer ;
//    NSArray *tableData;
//    NSArray *thumbnails;
//    NSString *myImgLabel;
//    NSString *myMapLabel;
//    NSString *myWebLabel;
//    NSString *myImg;
//    NSString *myMap;
//    NSString *myWeb;
}



@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
//    
//    // Initialize thumbnails
//    thumbnails = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", nil];
//    
//    myImgLabel =@"Egg Benedict";
//    myMapLabel =@"My House";
//    myWebLabel =@"My Website";
//    myImg = [UIImage imageNamed:@"egg_benedict.jpg"];
//    myMapLabel
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    customTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    CustomMapTableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"myCell2"];

    customWebTableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"myCell3"];
    
    
        tableView.separatorColor = [UIColor grayColor];
        [tableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];

    if (indexPath.row==0)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"customTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
        cell.imgView.image = [UIImage imageNamed:@"egg_benedict.jpg"];
        cell.imgLabel.text = @"Egg Benedict";
        return cell;
    }
    else if (indexPath.row==1) {
        NSArray *nibMap = [[NSBundle mainBundle] loadNibNamed:@"CustomMapTableViewCell" owner:self options:nil];
        cell2 = [nibMap objectAtIndex:0];
        cell2.myMapLabel.text = @"Delhi is my home City";
        return cell2;
    }
    else{
        NSArray *nibWeb = [[NSBundle mainBundle] loadNibNamed:@"customWebTableViewCell" owner:self options:nil];
        cell3 = [nibWeb objectAtIndex:0];
        cell3.myWebLabel.text = @"This is my Website";
//        NSString *urlString = @"http://www.google.com.ua";
//        NSString *urlString = @"http://www.quora.com";
        _webStringUrl =@"http://www.quora.com";
        NSURL *url = [NSURL URLWithString:_webStringUrl];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        cell3.myWebView.delegate = self;
        [cell3.myWebView loadRequest:urlRequest];
        
        
        //    NSURL* url = [NSURL URLWithString:@"http://services.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer"];
        //    AGSTiledMapServiceLayer *tiledLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
        //    [self.myMapView addMapLayer:tiledLayer withName:@"Basemap Tiled Layer"];
        
        
        return cell3;
    }
//    cell.imgLabel.text = [tableData objectAtIndex:indexPath.row];
//    cell.imgView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//    cell2.myMapView.delegate = self;
//    cell3.myWebView.delegate = self;
    
//    NSURL* url = [NSURL URLWithString:@"http://services.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer"];
//    AGSTiledMapServiceLayer *tiledLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:url];
//    [self.myMapView addMapLayer:tiledLayer withName:@"Basemap Tiled Layer"];
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    ImageViewController *obj = [[ImageViewController alloc]init];
    
    
    if(indexPath.row==0) {
        ImageViewController *myIVController =[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
        customTableViewCell *cell = (customTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
        myIVController.imageData = cell.imgView.image;
        myIVController.myTag = 1;
//        myIVController.imgLabelData = cell.imgLabel.text;
        myIVController.labelData = cell.imgLabel.text;
//
//        myIVController.theNewImg.hidden = NO;
//        myIVController.theNewMap.hidden = YES;
//        myIVController.theNewWeb.hidden = YES;
//        myIVController.theNewMap=nil;
//        myIVController.theNewWeb = nil;
        [self.navigationController pushViewController:myIVController animated:YES];
        
    }
    else if(indexPath.row==1) {
        ImageViewController *myIVController =[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
        
        CustomMapTableViewCell *cell2 = (CustomMapTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
        myIVController.myTag=2;
//        myIVController.mapLabelData = cell2.myMapLabel.text;
        myIVController.labelData = cell2.myMapLabel.text;
//        myIVController.theNewImg.hidden = YES;
//        myIVController.theNewMap.hidden = NO;
//        myIVController.theNewWeb.hidden = YES;
        [self.navigationController pushViewController:myIVController animated:YES];
    }
    else {
        ImageViewController *myIVController =[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
        customWebTableViewCell *cell3 = (customWebTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
        myIVController.myTag=3;
//        myIVController.webLabelData = cell3.myWebLabel.text;
        myIVController.labelData = cell3.myWebLabel.text;
        myIVController.webStringUrl = [NSString stringWithFormat:@"%@", _webStringUrl];
//        myIVController.theNewImg.hidden = YES;
//        myIVController.theNewMap.hidden = YES;
//        myIVController.theNewWeb.hidden = NO;
//        
        [self.navigationController pushViewController:myIVController animated:YES];
    }
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    if([segue.identifier isEqualToString:@"ViewController2"]){
//        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
//        ImageViewController *controller = (ImageViewController *)navController.topViewController;
//        controller.newImage =  [UIImage imageNamed:@"egg_benedict.jpg"];
//        controller.newImageLabel.text = @"THIS IS THE IMAGE";
//    }
//}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0;
}

@end
