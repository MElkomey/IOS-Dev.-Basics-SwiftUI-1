//
//  ControlView.swift
//  NatGeo App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

struct ControlView: View {
    //properties
    @Binding var scale :CGFloat
    @Binding var offset :CGSize
    //body
    var body: some View {
        HStack{
            Button {
                //minimize pic
                if scale>1 {
                    scale = scale - 1
                }
            } label: {
            Image(systemName: "minus.magnifyingglass")
            }
            
            Button {
                //reset image
                offset = .zero
                scale = 1
            } label: {
            Image(systemName: "arrow.up.left.and.down.right.magnifyingglass")
            }
            
            Button {
                //maximize image
                if scale<5{
                    scale  = scale + 1
                }
            } label: {
            Image(systemName: "plus.magnifyingglass")
            }
        }//:HStack
        .foregroundColor(.white)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .font(.largeTitle)
        .padding(.horizontal , 15)
        .padding(.vertical , 10)
    }
}

//preview
//struct ControlView_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlView(scale: .constant(1), offset: .constant(.zero))
//            .previewLayout(.sizeThatFits)
//            .preferredColorScheme(.dark)
//    }
//}
