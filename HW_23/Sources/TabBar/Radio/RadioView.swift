//
//  RadioView.swift
//  HW_23
//
//  Created by Виктор Басиев on 06.12.2022.
//

import SwiftUI

struct RadioView: View {
    
// MARK: - Elements

    @State private var model = RadioListModel.stationRadio
    
// MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(Array(model.enumerated()), id: \.offset) { offset, item in
                    switch offset {
                    case 0: HorisontalSection(model: item)
                    default:
                        VStack {
                            Rectangle()
                                .fill(Color(UIColor.gray.cgColor))
                                .frame(width: UIScreen.main.bounds.width, height: 2, alignment: .center)
                                .padding(.top, 10)
                                .opacity(0.2)
                            VerticalSection(model: item)
                        }
                    }
                }
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
