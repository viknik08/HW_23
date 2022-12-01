//
//  TableView.swift
//  HW_23
//
//  Created by Виктор Басиев on 28.11.2022.
//

import SwiftUI

struct TableView: View {
    // MARK: - Elements

    @State private var mediaList = MediaListModel.getMediaList()
    
    // MARK: - Body

    var body: some View {
            List {
                ForEach(0..<mediaList.count) { index in
                    Toggle(isOn: self.$mediaList[index].isOn) {
                        Image(systemName: self.mediaList[index].icon)
                            .resizable()
                            .frame(width: 26, height: 26)
                            .foregroundColor(.red)
                            .font(.system(size: 20, weight: .regular, design: .default))
                            .padding(.leading, 15)
                        Text("\(self.mediaList[index].name)")
                            .font(.title2)
                            .padding(.leading, 15)
                    }
                    .toggleStyle(CheckboxStyle())
                    .frame(height: 50)
                }
                .onMove(perform: moveRow)
            }
            .listStyle(.plain)
    }
    
    private func moveRow(from source: IndexSet, to distination: Int) {
        mediaList.move(fromOffsets: source, toOffset: distination)
    }
}

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(.red)
                .font(.system(size: 20, weight: .regular, design: .default))
                .padding(.leading, -15)
                configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
