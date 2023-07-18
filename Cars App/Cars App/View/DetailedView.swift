//
//  DetailedView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct DetailedView: View {
    //properties
    var car :Car
    //body
    var body: some View {
        
        ScrollView(.vertical , showsIndicators: false){
            VStack{
                //car image
                DetailsHeaderView(car: car)
                VStack(alignment: .leading, spacing: 15){
                    //car title
                    Text(car.title)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(car.gradientColors[0])
                    //car headline
                    Text(car.headline)
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                    //car model
                    Text("car Model")
                    //descreption
                    Text("Learn more about \(car.title)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(car.gradientColors[0])
                    Text(car.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    //links
                    Text("Link to wekibidia")
                }//:VStack
                .padding(.horizontal,15)
            }//:VStack
        }//:ScrollView
    }
}

//preview
//struct DetailedView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailedView(car: carsData[0])
//    }
//}

