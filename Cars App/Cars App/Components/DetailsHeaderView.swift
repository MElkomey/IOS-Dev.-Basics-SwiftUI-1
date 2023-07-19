//
//  DetailsHeaderView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct DetailsHeaderView: View {
    //properties
    var car :Car
    @State var isAnimating :Bool = false
    //body
    var body: some View {
        ZStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.6), value: isAnimating)
        }//:ZStack
        //.frame(height: 440, alignment: .center)
        //to be suitable for ipad also
        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 440, idealHeight: 440, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .topTrailing))
        .onAppear {
            isAnimating = true
        }
    }
}

//
//struct DetailsHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsHeaderView(car: carsData[1])
//    }
//}
