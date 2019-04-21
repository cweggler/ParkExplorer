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
    var flickrUser: FlickrUser?
    var flickrService = FlickrService()
    
    @IBOutlet var photoDetails: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet var usernameDetails: UITextView!
    
    // TODO: Add a textview that shows the username and link to profile page of person who created the photo
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Photo detail"
        
        loadingIndicator.startAnimating()
        
        let photoData = flickrImage!.photoData
        photoDetails.text = photoData!.title
        let url = flickrImage!.fullURL
        
        flickrService.findUser(userID: photoData!.owner) { ( user: FlickrUserData?, error: Error?) -> Void in
            
            DispatchQueue.main.async {
                
                if let error = error {
                    print(error)
                    
                    self.present(ErrorAlertController.alert(message: "Error getting user info"), animated: true)
                } else {
                    self.usernameDetails.text = "\(user!.username)\n \(user!.profileurl)"
                }
            }
        }

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
