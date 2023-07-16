//
//  ContentView.swift
//  Love&Care
//
//  Created by Mohamed Elkomey on 15/07/2023.
//

import SwiftUI

struct ContentView: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding :Bool = true //the initial value is true if app is in first time
    
    //body
    var body: some View {
        if isOnboarding {
            Onboarding()
        }else{
            Home()
        }
    }
}

//preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
