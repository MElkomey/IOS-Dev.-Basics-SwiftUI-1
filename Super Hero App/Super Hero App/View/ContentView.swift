//
//  ContentView.swift
//  Super Hero App
//
//  Created by Mohamed Elkomey on 14/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
            
                ForEach(superherosData) { item in
                    SuperheroView(superHero:item)
                }
                
            }//:HStack
            .padding(20)
        }//:ScrollView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
