//
//  TabBarView.swift
//  HW_23
//
//  Created by Виктор Басиев on 27.11.2022.
//

import SwiftUI

struct TabBarView: View {
    
// MARK: - Init
    
    init() {
        UITabBar.appearance().backgroundColor = .systemGray6
    }
    
// MARK: - Body

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView {
                MediaView()
                    .tabItem {
                        Image(systemName: "rectangle.stack.badge.play")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            
            MiniPlayer()
                .padding(.bottom, 5)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
