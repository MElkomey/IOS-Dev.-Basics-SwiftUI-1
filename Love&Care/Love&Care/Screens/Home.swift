//
//  Home.swift
//  Love&Care
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct Home: View {
    //properities
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    @State var isAnimating :Bool = false
    let feedback = UINotificationFeedbackGenerator()
    
    //body
    var body: some View {
        VStack(alignment: .center, spacing: 50){
            //MARK: - Header
            
            ZStack{
                CircleGroubView(circleGroupColor: .gray)
                Image("baby-boy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, alignment: .center)
                    .offset(y: isAnimating ? -30 : 30)
                    .animation(.easeOut(duration: 2.5).repeatForever(autoreverses: true), value: isAnimating)
            }//:ZStack
            
            //MARK: - Center
            Text("Having children just puts the whole world into prespective. Everything else just disappears")
                .padding()
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(.gray)
            
            //MARK: - Footer
            Button {
                //some action
                isOnboarding.toggle()
                playSound(soundFile: "chimeup", soundType: "mp3")
                feedback.notificationOccurred(.success)
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart)")
                    .font(.system(size: 25, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
        }//:VStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+2){
                isAnimating.toggle()
            }
        }
    }
}



//preview
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
