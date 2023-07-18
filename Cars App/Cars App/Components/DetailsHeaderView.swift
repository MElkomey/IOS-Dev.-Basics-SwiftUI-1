//
//  DetailsHeaderView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct DetailsHeaderView: View {
    var car :Car
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
        }//:ZStack
        .frame(height: 440, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .topTrailing))
    }
}


struct DetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeaderView(car: carsData[1])
    }
}
