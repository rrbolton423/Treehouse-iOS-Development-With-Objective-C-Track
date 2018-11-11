//
//  CollectionViewController.m
//  GifViewer
//
//  Created by Romell Bolton on 11/10/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "Giphy.h"
#import "DetailViewController.h"

@interface CollectionViewController ()
@property (strong, nonatomic) NSMutableArray *giphys; // Mutable array of Giphy objects

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"GifViewerCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Do any additional setup after loading the view.
    [self refreshImages];
}

- (void) refreshImages {
    
    // Create URL Session
    NSURLSession *session = [NSURLSession sharedSession];
    
    // Url to Giphy API
    NSURL *url = [NSURL URLWithString:@"https://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC&rating=pg"];
    
    // Initialize the Giphsys array before use
    self.giphys = [NSMutableArray array];
    
    // Create download task
    NSURLSessionDownloadTask *task = [session downloadTaskWithURL:url completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // Location parameter is where the response is located on disk
        NSData *data = [[NSData alloc] initWithContentsOfURL:location];
        
        // Serialize the JSON data and convert it to an NSDictionary
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        // data array > images > downsized_still > url
        
        // Create an array of dictionaries
        NSArray *dictionaries = [dictionary valueForKey:@"data"];
        
        // Loop through all dictionaries in the array
        for (NSDictionary *dict in dictionaries) {
            
            // Create a Giphy instance with each dictionary
            Giphy *giphy = [Giphy giphyWithDictionary:dict];
            
            // Add the Giphy object to the mutable array
            [self.giphys addObject:giphy];
        }

        NSLog(@"%@", self.giphys);
        
        // Execute a block of code on the main queue
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // Reload the collectionview after data is download
            [self.collectionView reloadData];
        });

    }];
    
    // Execute the Task
    [task resume];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // If it is a showDetail segue...
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        
        // Get the index path of the selected item
        NSIndexPath *selectedIndexPath = [self.collectionView indexPathsForSelectedItems][0];
        
        // Use the index path to access the current Giphy in the array of Gifs
        Giphy *giphy = self.giphys[selectedIndexPath.row];
        
        // Set the destination VC as the DetailViewController, and get a reference to it
        DetailViewController *detailViewController = segue.destinationViewController;
        
        // Pass the selected Gif object to the DetailVC
        detailViewController.giphy = giphy;
    }
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.giphys count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
   // Get the Giphy object
    Giphy *giphy = [self.giphys objectAtIndex:indexPath.row];
    
    // Assign the Gif to the cell
    cell.giphy = giphy;

    // Return the cell
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Have this current VC perform the segue with the "showDetail" identifier when a collection view cell is selected
    [self performSegueWithIdentifier:@"showDetail" sender:self];
}

@end
