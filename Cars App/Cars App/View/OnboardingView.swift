//
//  ContentView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct OnboardingView: View {
    //properties
    //body
    var body: some View {
        TabView{
            ForEach(carsData) { item in
                CardView(car: item)
                    .cornerRadius(15)
                    .padding(.horizontal,10)
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding()
    }
}

//preview
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//       OnboardingView()
//    }
//}
