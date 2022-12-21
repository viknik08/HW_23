//
//  ContentView.swift
//  HW_23
//
//  Created by Виктор Басиев on 27.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    var body: some View {
        TabBarView()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    launchScreenManager.dismiss()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchScreenManager())
    }
}
