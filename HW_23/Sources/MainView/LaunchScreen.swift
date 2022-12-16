//
//  LaunchScreen.swift
//  HW_23
//
//  Created by Виктор Басиев on 14.12.2022.
//

import SwiftUI

struct LaunchScreen: View {
    
// MARK: - Elements

    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @State private var firstPhase = false
    @State private var secondPhase = false
    private let timer = Timer.publish(every: 0.65, on: .main, in: .common).autoconnect()
    
// MARK: - Body

    var body: some View {
        ZStack {
            background
            logo
        }
        .onReceive(timer) { input in
            
            switch launchScreenManager.state {
                
            case .first:
                withAnimation(.spring()) {
                    firstPhase.toggle()
                }

            case .second:
                withAnimation(.easeInOut) {
                    secondPhase.toggle()
                }

            default: break
                
            }
        }
        .opacity(secondPhase ? 0 : 1)
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
            .environmentObject(LaunchScreenManager())
    }
}

private extension LaunchScreen {
    
    var background: some View {
        Color("launch-screen-bg")
            .edgesIgnoringSafeArea(.all)
    }
    
    var logo: some View {
        VStack {
            Image("appleLogo")
                .scaleEffect(firstPhase ? 0.6 : 1)
                .scaleEffect(secondPhase ? UIScreen.main.bounds.size.height / 4 : 1)

            Text("Apple Music")
                .bold()
                .font(.title)
                .foregroundColor(Color("color-for-launch"))
        }
    }
}
