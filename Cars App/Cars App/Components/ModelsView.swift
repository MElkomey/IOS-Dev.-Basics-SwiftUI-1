//
//  ModelsView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct ModelsView: View {
    //properties
    var car :Car
    //body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Car Models"){
                ForEach(0..<7) { index in
                    Divider()
                    HStack{
                        Image(systemName: "car")
                            .foregroundColor(car.gradientColors[0])
                        Text("Model \(index+1) :")
                            .foregroundColor(car.gradientColors[0])
                            .fontWeight(.bold)
                        Spacer()
                        Text(car.models[index])
                    }
                }//:HStack
                .padding(.vertical,2)
            }//:DisclosureGroup
            .foregroundColor(car.gradientColors[0])
        }//:GroupBox
    }
}

//preview
//struct ModelsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModelsView(car: carsData[2])
//    }
//}
