//
//  ImageCollectionViewController.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import UIKit

class ImageCollectionViewController: UICollectionViewController {
    
    var park: NationalPark?
    let reuseIdentifier = "UICollectionViewCell"
    
    let flickrservice = FlickrService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flickrservice.searchPhotos(query: park!.fullName) { ( photos: [FlickrPhotoData]?, error: Error?) -> Void in
            
            DispatchQueue.main.async {
                if error != nil {
                    self.present(ErrorAlertController.alert(message: "Unable to fetch photos"), animated: true)
                }
                
                if let photos = photos {
                    if photos.count == 0 {
                        self.present(ErrorAlertController.alert(message: "No photos found, try another park?"), animated: true)
                    }
                    else {
                        print(photos)
                        // TODO download thumbnails for photos and display in collection view
                    }
                }
            }
        }
    }
}
