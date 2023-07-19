//
//  ContentView.swift
//  Cinema App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct MainView: View {
    //properties
    //Body
    var body: some View {
        TabView{
            BrowserView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            TrailerView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Trailers")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
