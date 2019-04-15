//
//  ImageDetailViewController.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import UIKit

class ImageDetailViewController: UIViewController {
    
    var flickrImage: FlickrImage?
    var flickrService = FlickrService()
    
    @IBOutlet var photoDetails: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Photo detail"
        
        loadingIndicator.startAnimating()
        
        let photoData = flickrImage!.photoData
        photoDetails.text = photoData!.title
        let url = flickrImage!.fullURL
        
        flickrService.downloadImage(url: url!) { (image: UIImage?, error: Error?) -> Void in
            
            DispatchQueue.main.async {
                
                self.loadingIndicator.stopAnimating()
                
                if let error = error {
                    print(error)
                    self.present(ErrorAlertController.alert(message: "Error fetching photo "), animated: true)
                }
                else {
                    self.imageView.image = image
                }
            }
        }
    }
}
