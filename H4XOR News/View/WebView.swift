//
//  WebView.swift
//  H4XOR News
//
//  Created by lukasio on 07/08/2024.
//

import Foundation
import WebKit
import SwiftUI


struct WebView : UIViewRepresentable {
//    typealias UIViewType = WebView.UIViewType
    
    let urlString : String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let reqeust = URLRequest(url: url)
                uiView.load(reqeust)
            }
        }
    }

}
