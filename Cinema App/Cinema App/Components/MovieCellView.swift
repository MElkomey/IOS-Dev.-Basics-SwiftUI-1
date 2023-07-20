//
//  MovieCellView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 19/07/2023.
//

import SwiftUI

struct MovieCellView: View {
    //properties
    var movie :MovieModel
    //body
    var body: some View {
        HStack{
            Image(movie.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 8){
                Text(movie.name)
                    .foregroundColor(.accentColor)
                    .font(.title3)
                Text(movie.headline)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }//:VStack
        }//:HStack
    }
}

//preview
//struct MovieCellView_Previews: PreviewProvider {
//    static let movies :[MovieModel] = decode(file: "movies.json")
//    static var previews: some View {
//        MovieCellView(movie: movies[5])
//    }
//}
