//
//  MovieDetailsView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 19/07/2023.
//

import SwiftUI

struct MovieDetailsView: View {
    //MARK: - Properties
    var movie :MovieModel
    //MARK: - Body
    var body: some View {
        ScrollView {
            VStack{
                Image(movie.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 235, alignment: .center)
                
                TitleHeaderView(titleImage: "person", titleText: "Actors")
                
                List{
                    ForEach(movie.actor ,id: \.self) { item in
                        Text(item)
                    }
                }//:List
                .listStyle(InsetGroupedListStyle())
                .frame(minWidth:200 ,idealWidth: 200,maxHeight: 200)
        
                
                TitleHeaderView(titleImage: "photo.on.rectangle.angled", titleText: "Movie Images")
                
                ScrollView(.horizontal , showsIndicators: false){
                    HStack{
                        ForEach(movie.gallery, id: \.self) { item in
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 375)
                        }
                    }//:HStack
                }//:ScrollView
                
                TitleHeaderView(titleImage: "ellipsis.circle", titleText: "More about...")
                
                Text(movie.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
            }//:VStack
        }//:ScrollView
    }
}

//MARK: - Preview
struct MovieDetailsView_Previews: PreviewProvider {
    static let movies :[MovieModel] = decode(file: "movies.json")
    static var previews: some View {
        MovieDetailsView(movie: movies[2])
    }
}

//MARK: -reusable views
struct TitleHeaderView: View {
    //properties
    var titleImage :String
    var titleText :String
    //body
    var body: some View {
        HStack{
            Image(systemName: titleImage)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(titleText)
                .font(.title3)
                .fontWeight(.bold)
        }//:HStack
    }
}
