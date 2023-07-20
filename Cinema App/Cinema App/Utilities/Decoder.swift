//
//  Decoder.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 19/07/2023.
//

import SwiftUI

func decode<T:Codable>(file :String) ->T {
    //1.locate the json file in bundle
    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
        fatalError("Couldn't find the file")
    }
    //2.create property for the datat
    guard let data = try? Data(contentsOf: url) else {
        fatalError("couldnt convert to data")
    }
    //3.create decoder
    let decoder = JSONDecoder()
    //4.create a property for decoded data
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
    fatalError("failed to decode data")
    }
    //5.return ready to use data
    return decodedData
}
