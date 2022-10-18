//
//  PostData.swift
//  News-ios
//
//  Created by Sriramoju Avinash Sai on 22/09/22.
//

import Foundation

struct Results:Codable{
    var hits: [Post]
}

struct Post : Codable,Identifiable {
    var id : String{
        return objectID
    }
    let objectID : String
    var title : String
    var points :Int
    var url : String?
}
