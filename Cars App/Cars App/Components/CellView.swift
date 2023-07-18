//
//  CellView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct CellView: View {
    //properties
    var car :Car
    //body
    var body: some View {
        HStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(8)
                .shadow(color: .blue.opacity(0.3), radius: 2, x: 2, y: 2)
            VStack(alignment: .leading, spacing: 5){
                Text(car.title)
                    .fontWeight(.heavy)
                    .font(.title2)
                Text(car.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(3)
            }//:VStack
            Spacer()
        }//:HStack
    }
}

//preview
struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(car: carsData[0])
            .previewLayout(.sizeThatFits)
    }
}
