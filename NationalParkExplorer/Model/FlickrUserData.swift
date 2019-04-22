//
//  FlickrUserData.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/21/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import Foundation
import UIKit

struct FlickrUserInfoResponse: Decodable {
    let person: FlickrUserData
}

struct FlickrUserData: Decodable {
    let id: String
    let username: Username
    let realname: Realname
    let profileurl: ProfileUrl
}

struct Username: Decodable {
    let _content: String
}

struct Realname: Decodable {
    let _content: String
}

struct ProfileUrl: Decodable {
    let _content: String
}
