//
//  SuperheroView.swift
//  Super Hero App
//
//  Created by Mohamed Elkomey on 14/07/2023.

//select all then  +ctrl +i to prettify your code

import SwiftUI

struct SuperheroView: View {
    var superHero:Superhero
    // var gredient : [Color] = [Color("ColorHulk01"), Color("ColorHulk02")]
    @State var isAlertPresented = false
    @State var isScaling = false // for animation
    @State var isSliding = false //for animation
    
    //for vibration
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        ZStack{
            Image(superHero.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaling ? 1 : 0.7)
                .animation(.easeOut(duration: 1.5), value: isScaling)
            
            VStack{
                Text(superHero.title)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                Button {
                    //some action
                    isAlertPresented.toggle()
                    hapticImpact.impactOccurred()
                    playSound(sound: "chimeup", type: "mp3")
                } label: {
                    HStack{
                        Text("About")
                        Image(systemName: "arrow.right.circle")
                    }//:HStack
                    .padding()
                    .font(.title2)
                    // .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: superHero.gradientColors), startPoint: .bottomTrailing, endPoint: .topLeading))
                    .clipShape(Capsule())
                    .shadow(radius: 10)
                    .alert(isPresented: $isAlertPresented) {
                        Alert(title: Text("More About \(superHero.title)"), message: Text(superHero.message), dismissButton: .default(Text("Ok")))
                    }
                }//:label
            }//:VStack
            .offset(x: 0, y: isSliding ? 150 : 300) //? : for animation
            .animation(.easeOut(duration: 1.5), value: isSliding)
        }//:ZStack //command + option + leftarrow to fold
        .frame(width: 330, height: 545, alignment: .center)
        .background(LinearGradient(colors:superHero.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(16)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
        .onAppear{
            isScaling = true
            isSliding = true
        }
    }
}

struct SuperheroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroView(superHero: superherosData[1])
    }
}
