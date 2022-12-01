//
//  PreviewSreen.swift
//  HW_23
//
//  Created by Виктор Басиев on 01.12.2022.
//

import SwiftUI

struct PreviewSreen: View {
    
//    MARK: - Elements
    
    var height = UIScreen.main.bounds.height / 3

//    MARK: - Body

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("Ищите свою музыку?")
                    .font(.title)
                    .bold()
                Text("Здесь появится купленная вами в itunes store музыка")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            }
            .padding(.top, height)
        }
    }
}

struct PreviewSreen_Previews: PreviewProvider {
    static var previews: some View {
        PreviewSreen()
    }
}
