//
//  MovieModel.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 19/07/2023.
//

import SwiftUI

struct MovieModel :Codable, Identifiable {
    var id :String
    var name :String
    var headline :String
    var description :String
    var link :String
    var image :String
    var gallery :[String]
    var actor :[String]
}
