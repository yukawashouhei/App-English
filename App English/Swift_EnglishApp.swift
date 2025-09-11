//
//  Swift_EnglishApp.swift
//  App English
//
//  Created by 湯川昇平 on 2025/08/02.
//

import SwiftUI

@main
struct Swift_EnglishApp: App {
    @State private var dataManager = DataManager.shared
    @State private var showOnboarding = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .sheet(isPresented: $showOnboarding) {
                    OnboardingView(isPresented: $showOnboarding)
                        .onDisappear {
                            dataManager.markOnboardingComplete()
                        }
                }
                .onAppear {
                    showOnboarding = !dataManager.hasSeenOnboarding
                }
        }
    }
}
