//
//  OnBoarding.swift
//  Love&Care
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct Onboarding: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    @State var isAnimating :Bool = false
    @State var imageOffset :CGSize = CGSize(width: 0.0, height: 0.0)
    
    //body
    var body: some View {
        ZStack{
            Color("ColorBlue")
                .ignoresSafeArea(.all)
            VStack{
                //MARK: - Header
                VStack{
                    Text("Care.")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    Text("Life doesn't come with manual ,it comes with mother")
                        .foregroundColor(.white)
                        .font(.title3)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                }//:VStack
                .offset(y: isAnimating ? 0 : -40 )
                .animation(.easeOut(duration: 1), value: isAnimating)
                Spacer()
                //MARK: - Center
                ZStack{
                    CircleGroubView(circleGroupColor: .white)
                        .offset(x: (imageOffset.width) * -1 )
                        .blur(radius: abs(imageOffset.width)/5 ,opaque: false)
                    Image("happy-pregnant")
                        .resizable()
                        .scaledToFit()
                        .offset(x: imageOffset.width, y: 0)
                        .rotationEffect(.degrees(imageOffset.width/15))
                        .shadow(color: .black.opacity(0.5), radius: 8, x:3, y: 30)
                        .overlay( //allow to put content on image
                            Image(systemName: "arrow.left.and.right.circle")
                                .font(.system(size: 40, weight: .ultraLight, design: .rounded))
                                .foregroundColor(.white)
                                .opacity((abs(imageOffset.width)>0) ? 0 : 1)
                            ,alignment: .bottom
                        )
                        .frame(width: 300, alignment: .center)
                        .gesture(DragGesture()
                                    .onChanged({ gestureValue in
                            if (gestureValue.translation.width <= 150) && (gestureValue.translation.width >= -150){
                                imageOffset=gestureValue.translation
                            }
                        })
                                    .onEnded({ _ in
                            withAnimation(.easeOut(duration: 0.5)) {
                                imageOffset = .zero
                            }
                        })
                        )
                    
                }
                //MARK: - Footer
                ZStack{
                    //background
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    //text
                    Text("Start")
                        .font(.system(size: 30, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    //dynamic capsule
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }//:HStack
                    //dragable circle
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                                .frame(width:80)
                            Circle()
                                .fill(.black.opacity(0.2))
                                .frame(width:80)
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                        }//:ZStack
                        .frame(width: 80, alignment: .center)
                        Spacer()
                    }//:HStack
                }//:ZStack
                .frame(height: 80, alignment: .center)
                .padding(.horizontal, 40)
                .offset(y: isAnimating ? 0 : 40 )
                .animation(.easeOut(duration: 1), value: isAnimating)
            }//:VStack
        }//:ZStack
        .onAppear {
            isAnimating.toggle()
        }
    }
}

//preview
struct OnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
