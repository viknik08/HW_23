//
//  HW_23App.swift
//  HW_23
//
//  Created by Виктор Басиев on 27.11.2022.
//

import SwiftUI

@main
struct HW_23App: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()

                if launchScreenManager.state != .complited {
                    LaunchScreen()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
