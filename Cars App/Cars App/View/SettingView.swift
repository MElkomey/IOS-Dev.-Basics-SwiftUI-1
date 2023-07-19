//
//  SettingView.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 18/07/2023.
//

import SwiftUI

struct SettingView: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    @Environment(\.presentationMode) var presentationMode
    //body
    var body: some View {
        NavigationView{
            VStack{
            //Group box
            GroupBox(){
                HStack{
                    Text("Cars")
                        .fontWeight(.bold)
                        .font(.title3)
                    Spacer()
                    Image(systemName: "info.circle")
                        .font(.title)
                }//:HStack
                Divider()
                HStack{
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .center)
                    Text("Cars app includes very important information about the luxury cars, it has details about the history of different models.")
                }
            }//:GroupBox
   
            //check box
                Toggle(isOn: $isOnboarding){
                    
                    if isOnboarding {
                        Text("Restarted".uppercased())
                            .font(.title)
                            .foregroundColor(.green)
                    }else{
                        Text("Restart".uppercased())
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    
                }//:Toggle
                .padding()
                .background(.ultraThickMaterial)
                .cornerRadius(8)
                
                Spacer()
            }//:VStack
            
            .navigationTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                //close th sheet
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title2)
            }))
        }//:NavigationView
    }
}

//preview
//struct SettingView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingView()
//    }
//}
