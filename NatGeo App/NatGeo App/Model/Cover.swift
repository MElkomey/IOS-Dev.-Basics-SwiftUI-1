//
//  Cover.swift
//  NatGeo App
//
//  Created by Mohamed Elkomey on 16/07/2023.
//

import Foundation

struct Cover :Identifiable{
    var id :Int
    var imageName :String
    var thumbnail : String{
        return "thumb-" + imageName
    }
}
