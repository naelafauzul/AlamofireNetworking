//
//  ContentView.swift
//  AlamofireNetworking
//
//  Created by Naela Fauzul Muna on 22/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = PostViewModel()

        var body: some View {
            NavigationView {
                List(viewModel.posts, id: \.id) { post in
                    VStack(alignment: .leading) {
                        Text(post.title)
                            .font(.headline)
                        Text(post.body)
                            .foregroundColor(.gray)
                    }
                }
                .navigationBarTitle("Posts")
                .onAppear {
                    viewModel.fetchData()
                }
            }
        }
}

#Preview {
    ContentView()
}
