//
//  DetailViewController.h
//  GifViewer
//
//  Created by Romell Bolton on 11/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Giphy;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Giphy *giphy;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
