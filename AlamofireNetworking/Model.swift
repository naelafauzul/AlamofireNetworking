//
//  Model.swift
//  AlamofireNetworking
//
//  Created by Naela Fauzul Muna on 22/01/24.
//

import Foundation

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

