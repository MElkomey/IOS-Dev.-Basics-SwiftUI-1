//
//  Cars_AppApp.swift
//  Cars App
//
//  Created by Mohamed Elkomey on 17/07/2023.
//

import SwiftUI

@main
struct Cars_AppApp: App {
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else{
                ListView()
            }
            
        }
    }
}
