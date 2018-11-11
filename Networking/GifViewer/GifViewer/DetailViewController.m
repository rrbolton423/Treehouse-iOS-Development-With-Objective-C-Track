//
//  DetailViewController.m
//  GifViewer
//
//  Created by Romell Bolton on 11/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "DetailViewController.h"
#import "Giphy.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Check to see if we have a valid Giphy object
    if ( self.giphy ) {
        
        // Create a URLReuqest, passing the animatedGifUrl of the current Gif
        NSURLRequest *request = [NSURLRequest requestWithURL:self.giphy.animatedGifUrl];
        
        // Display the content of the request using the WebView to load it
        [self.webView loadRequest:request];
    }
    
    // Set up the gestures in viewDidLoad(
    [self setupGestures];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)setupGestures {
    
    // Create an instance of UITapGestureRecognizer, which action results in dismissing the currently displayed VC (self)
    UITapGestureRecognizer *dismiss = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    
    // Set the number of taps for the gesture to be recognized to be 1 tap
    dismiss.numberOfTapsRequired = 1;
    
    // Assign the view that should be looking out for this gesture (The main view)
    [self.view addGestureRecognizer:dismiss];
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
