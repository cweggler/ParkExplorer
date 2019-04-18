//
//  FlickrPhotoData.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import Foundation
import UIKit

struct FlickrResponse: Decodable {
    let photos: FlickrPhotoResponse
}

struct FlickrPhotoResponse: Decodable {
    let photo: [FlickrPhotoData]
}

struct FlickrPhotoData: Decodable {
    let id: String
    let owner: String
    let secret: String
    let server: String
    let farm: Int
    let title: String
    let ispublic: Int
}

struct FlickrUserData: Decodable {
    let person: PersonData
}

struct PersonData: Decodable {
    let id: String
    let username: Username
    let profileurl: ProfileUrl
}

struct Username: Decodable {
    let _content: String
}

struct ProfileUrl: Decodable {
    let _content: String
}

