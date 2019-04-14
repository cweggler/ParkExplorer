//
//  FlickrImage.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import UIKit

class FlickrImage {
    
    var photoData: FlickrPhotoData?
    var thumbnail: UIImage?
    var full: UIImage?
    
    init(photoData: FlickrPhotoData) {
        self.photoData = photoData
    }
    
    var thumbnailURL: String? {
        guard let photo = photoData else {return nil }
        return "https://farm\(photo.farm)"
    }
}
