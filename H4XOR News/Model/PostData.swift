//
//  PostData.swift
//  H4XOR News
//
//  Created by lukasio on 07/08/2024.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable{
    let objectID : String
    let title : String
    let points : Int
    let url : String?
    
    var id: String {
        return objectID
    }
}
