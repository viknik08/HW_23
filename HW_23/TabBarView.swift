//
//  TabBarView.swift
//  HW_23
//
//  Created by Виктор Басиев on 27.11.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Text("Медиатека")
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Медиатека")
                }
            Text("Радио")
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
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
