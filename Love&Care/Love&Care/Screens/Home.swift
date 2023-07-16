//
//  Home.swift
//  Love&Care
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct Home: View {
    //properities
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    
    //body
    var body: some View {
        VStack{
            Text("Home")
            Button {
                //Action change onboarding
                isOnboarding.toggle()
            } label: {
                Text("Restart")
                    .font(.title)
            }
        }//:VStack
    }
}

//preview
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
