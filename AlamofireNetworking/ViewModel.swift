//
//  ViewModel.swift
//  AlamofireNetworking
//
//  Created by Naela Fauzul Muna on 22/01/24.
//

import Foundation

import Alamofire
import SwiftUI

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []

    func fetchData() {
        AF.request("https://jsonplaceholder.typicode.com/posts")
            .responseDecodable(of: [Post].self) { response in
                switch response.result {
                case .success(let posts):
                    self.posts = posts
                case .failure(let error):
                    print("Error fetching data: \(error.localizedDescription)")
                }
            }
    }
}
