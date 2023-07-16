//
//  CircleGroubView.swift
//  Love&Care
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct CircleGroubView: View {
    //properties
    var circleGroupColor:Color = .red
    @State var isAnimating :Bool = false
    //body
    var body: some View {
        ZStack{
            Circle()
                .stroke(circleGroupColor.opacity(0.2),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(circleGroupColor.opacity(0.2),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//:ZStack
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating.toggle()
        }
    }
}

//preview
struct CircleGroubView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroubView(circleGroupColor: .gray)
    }
}
