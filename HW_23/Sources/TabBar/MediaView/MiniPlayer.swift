//
//  MiniPlayer.swift
//  HW_23
//
//  Created by Виктор Басиев on 01.12.2022.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            HStack {
                Image("CA")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                
                Text("We`re live")
                    .font(.title2)
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                })
            }
            .padding()
        }
        .background(
            Color(UIColor.systemGray5)
        )
        .frame(maxHeight: 80)
        .ignoresSafeArea()
        .offset(y: -50)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
