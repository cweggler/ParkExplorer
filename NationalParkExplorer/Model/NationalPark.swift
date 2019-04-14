//
//  NationalPark.swift
//  NationalParkExplorer
//
//  Created by Cara on 4/9/19.
//  Copyright © 2019 Cara. All rights reserved.
//

import Foundation

struct NationalParkResult: Decodable {
    let total: String
    let data: [NationalPark]
}

struct NationalPark: Decodable {
    let states: String
    let description: String
    let fullName: String
}
