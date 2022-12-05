//
//  VerticalSection.swift
//  HW_23
//
//  Created by Виктор Басиев on 06.12.2022.
//

import SwiftUI

struct VerticalSection: View {
    
// MARK: - Elements

    var model: [RadioListModel]
    
    let columns = [
        GridItem(.adaptive(minimum: 400))
    ]
    
// MARK: - Body

    var body: some View {
        Section(
            header: HStack {
                Text("Станции")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
            }
        ){
            LazyVGrid(columns: columns) {
                ForEach(Array(model.enumerated()), id: \.offset) { offset, data in
                    if offset == (model.count - 1) {
                        self.verticalScroll(data: data)
                            .frame(width: 410, height: 150, alignment: .leading)
                            .padding(.bottom, 100)
                    } else {
                        self.verticalScroll(data: data)
                            .frame(width: 410, height: 150, alignment: .leading)
                    }
                }
            }
        }
        .padding(.leading, 20)
    }
    
// MARK: - Private func

    private func verticalScroll(data: RadioListModel) -> some View {
        return HStack {
            Image(data.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .cornerRadius(5)
            
            VStack {
                Text(data.name)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing, 10)
                
                Text(data.additionalInfo)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct VerticalSection_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSection(model: [])
    }
}
