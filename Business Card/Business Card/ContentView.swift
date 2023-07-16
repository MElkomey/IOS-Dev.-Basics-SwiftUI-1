//
//  ContentView.swift
//  Business Card
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 5.0){
            VStack(){
                Image("personImg")
                    .resizable()
                    .scaledToFit()
                    .background(.white)
                    .cornerRadius(10.0)
                    .clipped()
                Text("Mohamed\nElkomey")
                    .font(.headline)
                    .foregroundColor(.orange)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .layoutPriority(1)
            }//:VStak
            .padding()
            VStack(alignment: .leading , spacing: 10){
                ForEach(Informations) { item in
                    HStack{
                        Image(systemName: item.image)
                            //.resizable()
                            //.scaledToFit()
                            .foregroundColor(.orange)
                            //.fixedSize()
                            .font(.title2)
                        Text(item.txt)
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .layoutPriority(1)
                    }//:HStack
                }
            }//:VStack
            .scaledToFill()
        }//:HStack
        .background(Color("cardColor"))
        .cornerRadius(10.0)
        .clipped()
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Information:Identifiable{
    var id: UUID = UUID()
    var image:String
    var txt:String
}

var Informations: [Information] = [
    Information(image: "person.circle", txt: "Mohamed Elkomey"),
    Information(image: "envelope.fill", txt: "mm6231169@gmail.com"),
    Information(image: "phone.circle.fill", txt: "+201092645993"),
    Information(image: "house.fill", txt: "30 , Egypt")
]
