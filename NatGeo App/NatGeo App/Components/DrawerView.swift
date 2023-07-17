//
//  DrawerView.swift
//  NatGeo App
//
//  Created by Mohamed Elkomey on 16/07/2023.
//

import SwiftUI

struct DrawerView: View {
    //properties
    var covers :[Cover] = coversData
    @State var isDrawerOpened : Bool = false
    @Binding var index :Int
    //body
    var body: some View {
        HStack{
            Image(systemName: isDrawerOpened ? "chevron.compact.right" : "chevron.compact.left")
                .resizable()
                .scaledToFit()
                .frame(height: 40, alignment: .center)
                .foregroundColor(.secondary)
                .padding(8)
                .onTapGesture {
                    isDrawerOpened.toggle()
                }
            Spacer()
            
            ForEach(covers) { item in
                Image(item.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120, alignment: .center)
                    .padding(.horizontal,2)
                    .onTapGesture {
                        index = item.id - 1
                    }
            }
            
        }//:HStack
        .frame(width: 260)
        .background(.thinMaterial)
        .cornerRadius(8)
        .offset(x: isDrawerOpened ? 0 : 225)
        
    }
}

//preview
//struct DrawerView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrawerView(index: .constant(0))
//           // .previewLayout(.sizeThatFits)
//          //  .preferredColorScheme(.dark)
//    }
//}
