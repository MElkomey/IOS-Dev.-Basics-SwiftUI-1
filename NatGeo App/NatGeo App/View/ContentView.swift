//
//  ContentView.swift
//  NatGeo App
//
//  Created by Mohamed Elkomey on 16/07/2023.
//

import SwiftUI

struct ContentView: View {
    //properties
    @State var imageScale :CGFloat = 1
    @State var imageOffset : CGSize = .zero
    
    let covers:[Cover] = coversData
    @State var coverIndex :Int = 0
    
    private func resetImage(){
        imageScale = 1
        imageOffset = .zero
    }
    
    //body
    var body: some View {
        Image(covers[coverIndex].imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.35), radius: 8, x: 3, y: 3)
            .scaleEffect(imageScale)
            .offset(x: imageOffset.width , y: imageOffset.height)
            .padding()
        //1.double tab gesture
            .onTapGesture(count: 2) {
                withAnimation(.spring()){
                    if imageScale == 1{
                        imageScale = 5
                    }else{
                        resetImage()
                    }
                }
            }
        //2.drag gesture
            .gesture(DragGesture()
                        .onChanged({ gestureValue in
                imageOffset = gestureValue.translation
            })
                        .onEnded({ _ in
                withAnimation(.spring()){
                    if imageScale <= 1 {
                        resetImage()
                    }
                }
            })
            )
        //3. magnification gesture
            .gesture(MagnificationGesture()
                        .onChanged({ value in
                withAnimation(.spring()){
                    if imageScale >= 1 && imageScale <= 5 {
                        imageScale = value
                    }else if imageScale > 5{
                        imageScale = 5
                    }else if imageScale < 1 {
                        imageScale = 1
                    }
                }
            })
                        .onEnded({ value in
                withAnimation(.spring()){
                    if imageScale > 5 {
                        imageScale = 5
                    }else if imageScale < 1{
                        imageScale = 1
                    }
                }
            })
            )
            //drawer view
            .overlay(alignment: .topTrailing) {
                DrawerView(index: $coverIndex)
                    .padding(.top,15)
            }
            //control view
            .overlay(alignment: .bottom) {
                ControlView(scale: $imageScale, offset:$imageOffset )
            }
           //pannel view
            .overlay(alignment: .top) {
                PannelView(scale: imageScale, offset: imageOffset)
                    .offset(y: -50)
                    .padding()
            }
        
    }
}

//preview
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.dark)
//    }
//}
