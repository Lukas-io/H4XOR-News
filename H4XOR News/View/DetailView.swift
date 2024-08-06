//
//  DetailView.swift
//  H4XOR News
//
//  Created by lukasio on 07/08/2024.
//

import SwiftUI


struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "google.com")
}

