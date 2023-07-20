//
//  CoverView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct CoverView: View {
    //properties
    var coverImages :[CoverModel] = decode(file: "covers.json")
    //body
    var body: some View {
        TabView{
            ForEach(coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFit()
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

//preview
struct CoverView_Previews: PreviewProvider {
    static var previews: some View {
        CoverView()
            .preferredColorScheme(.dark)
    }
}
