//
//  Car.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct Car :Identifiable{
    let id = UUID()
    let title :String
    let headline :String
    let image :String
    let gradientColors :[Color]
    let description :String
    let models :[String]
}
