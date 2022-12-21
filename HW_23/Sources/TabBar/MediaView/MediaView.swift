//
//  MediaView.swift
//  HW_23
//
//  Created by Виктор Басиев on 27.11.2022.
//

import SwiftUI

struct MediaView: View {
// MARK: - Elements
    
    @State var isEditing = false
    @State private var editMode = EditMode.inactive
    
// MARK: - Body
    
    var body: some View {
        NavigationView {
            changeView
                .navigationTitle("Медиатека")
                .navigationBarItems(trailing: navigationBarItemTrailing)
                .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
        }
    }
    
// MARK: - Private func
    
    private var navigationBarItemTrailing: some View {
        return AnyView(Button(action: actionButton) {
                Text(isEditing ? "Готово" : "Править")
                    .frame(width: 80, height: 40)
            })
    }
    
    private var changeView: some View {
        if isEditing {
            return AnyView(TableView())
        } else {
            return AnyView(PreviewSreen())
        }
    }
    
    private func actionButton() {
        self.isEditing.toggle()
    }
}


struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}

