//
//  CoverView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct CoverView: View {
    var body: some View {
        TabView{
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-men-in-black")
                    .resizable()
                .scaledToFit()
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
            .preferredColorScheme(.dark)
    }
}
