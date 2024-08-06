//
//  ContentView.swift
//  H4XOR News
//
//  Created by lukasio on 07/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView(content: {
            
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                            .multilineTextAlignment(.leading)
                    }
                }
            }.navigationTitle("H4XOR News")
        })
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}

