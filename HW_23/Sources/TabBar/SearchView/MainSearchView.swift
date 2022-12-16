//
//  MainSearchView.swift
//  HW_23
//
//  Created by Виктор Басиев on 15.12.2022.
//

import SwiftUI

struct MainSearchView: View {
    
// MARK: - Elements
    
    @State private var text = ""
    @State private var model = SearchModel.search
    
// MARK: - Body
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    SearchBar(text: $text)
                        .padding(.top, 0)
                    Rectangle()
                        .fill(Color(UIColor.systemGray6))
                        .frame(width: 390, height: 2, alignment: .center)
                        .padding(.top, 5)
                    SectionMain(model: model)
                }
            }
            .navigationTitle("Поиск")
        }
    }
}

struct MainSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchView()
    }
}

struct SectionMain: View {
    let columns = [
        GridItem(.fixed(190)),
        GridItem(.fixed(190))
    ]
    @State var model: [SearchModel]
    
    var body: some View {
        Section(
            header:
                Text("Поиск по категориям")
                .bold()
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
        ) {
            ZStack {
                LazyVGrid(columns: columns) {
                    ForEach(0..<model.count) { idx in
                        HStack {
                            NavigationLink(destination: CategoryCellSearch(name: self.$model[idx].name)) {
                                    Image(self.model[idx].icon)
                                        .resizable()
                                        .clipped()
                                        .frame(width: 190, height: 120)
                                        .cornerRadius(10)
                                }
                        }
                    }
                }
            }
            .padding(.bottom, 100)
        }
    }
}

struct SearchBar: View {
    
// MARK: - Elements

    @Binding var text: String
    @State private var isEditing = false
        
// MARK: - Body

    var body: some View {
        HStack {
            
            TextField("Ваша медиатека", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                                
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 20)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}
