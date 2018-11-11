//
//  CollectionViewCell.h
//  GifViewer
//
//  Created by Romell Bolton on 11/10/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Giphy;

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) Giphy *giphy;

@end
