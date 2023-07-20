//
//  BrowserView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct BrowserView: View {
    //properties
    var movies :[MovieModel] = decode(file: "movies.json")
    //body
    var body: some View {
        NavigationView{
            VStack{
                List{
                    CoverView()
                        .frame(height: 235)
                    ForEach(movies) { item in
                        MovieCellView(movie: item)
                    }
                    HStack{
                        Spacer()
                        Image("camera")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        Spacer()
                    }//:HStack
                    HStack{
                        Spacer()
                        Text("All Rights Reserved")
                            .font(.footnote)
                        Spacer()
                    }//:HStack
                }//:List
            }//:VStack
            .navigationTitle("Browser")
        }//:NavigationView
    }
}

//preview
//struct BrowserView_Previews: PreviewProvider {
//    static var previews: some View {
//        BrowserView()
//            .preferredColorScheme(.dark)
//    }
//}
