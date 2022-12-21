//
//  TableView.swift
//  HW_23
//
//  Created by Виктор Басиев on 28.11.2022.
//

import SwiftUI

struct TableView: View {
    
// MARK: - Elements

    @State private var mediaList = MediaListModel.mediaList
    @State var isEditMode = EditMode.active
    @State var selectionItems: [String] = []
    @State var someItemSelection = Set<UUID>()
    
// MARK: - Body

    var body: some View {
            List(selection: $someItemSelection) {
                
                ForEach(mediaList, id: \.id) { index in
                    ListItemView(title: index.name, icon: index.icon, isSelected: selectionItems.contains(index.name)) {
                        if self.selectionItems.contains(index.name) {
                            self.selectionItems.removeAll(where: { index.name == $0 })
                        } else {
                            self.selectionItems.append(index.name)
                        }
                    }
                }
                .onMove(perform: moveRow)
            }
            .environment(\.editMode, $isEditMode)
            .listStyle(.plain)
    }
    
    private func moveRow(from source: IndexSet, to distination: Int) {
        mediaList.move(fromOffsets: source, toOffset: distination)
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}

struct ListItemView: View {
    var title: String
    var icon: String
    var isSelected: Bool
    var itemAction: () -> ()

    var body: some View {
        Button(action: self.itemAction) {
            HStack {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red)
                
                Text(self.title)
                    .font(.system(size: 18,weight: .regular, design: .default))
            }
            .frame(height: 40)
        }
    }
}
