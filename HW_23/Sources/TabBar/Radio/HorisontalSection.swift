//
//  HorisontalSection.swift
//  HW_23
//
//  Created by Виктор Басиев on 06.12.2022.
//

import SwiftUI

struct HorisontalSection: View {
    
// MARK: - Elements

    var model: [RadioListModel]

    let rows = [
        GridItem(.adaptive(minimum: 300))
    ]
    
// MARK: - Body

    var body: some View {
        Section {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(Array(model.enumerated()), id: \.offset) { offset, data in
                        switch offset {
                        case 0:
                            self.horizontalScroll(data: data)
                                .padding(.leading, 30)
                        case (model.count - 1):
                            self.horizontalScroll(data: data)
                                .padding(.trailing, 30)
                        default:
                            self.horizontalScroll(data: data)
                        }
                    }
                }
                Spacer()
            }
        }
    }
    
// MARK: - Private func

    private func horizontalScroll(data: RadioListModel) -> some View {
        return VStack {
            Rectangle()
                .fill(Color(UIColor.gray.cgColor))
                .frame(width: 360, height: 2, alignment: .center)
                .padding(.bottom, 10)
                .opacity(0.2)
            
            Text(data.additionalInfo)
                .font(.system(size: 15, weight: .regular, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.gray)
            
            Text(data.name)
                .font(.system(size: 24, weight: .regular, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(data.nameStation ?? "")
                .font(.system(size: 24, weight: .regular, design: .default))
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(data.icon)
                .resizable()
                .frame(width: 380, height: 200)
                .cornerRadius(5)
        }
    }
}

struct HorisontalSection_Previews: PreviewProvider {
    static var previews: some View {
        HorisontalSection(model: [])
    }
}
