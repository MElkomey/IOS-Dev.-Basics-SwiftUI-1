//
//  CardView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct CardView: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    var car :Car
    @State var isAnimating :Bool = false
    //body
    var body: some View {
        VStack{
            Image(car.image)
                .resizable()
                .scaledToFit()
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.6)
                .animation(.linear(duration: 0.7), value: isAnimating)
            Text(car.title)
                .fontWeight(.heavy)
                .font(.largeTitle)
                .foregroundColor(.white)
            Text(car.headline)
                .font(.title3)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding()
            Button {
                isOnboarding = false
            } label: {
                Image(systemName: "arrow.right.circle")
                Text("Start")
            }
            .padding(.horizontal , 15)
            .padding(.vertical , 10)
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(Capsule().strokeBorder(Color.white , lineWidth: 1.5))
        }//:HStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .shadow(color: .black.opacity(0.5), radius: 2, x: 2, y: 2)
        .background(LinearGradient(gradient: Gradient(colors: car.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .onAppear {
            isAnimating = true
        }
        
    }
}

//preview
//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(car: carsData[1])
//    }
//}
