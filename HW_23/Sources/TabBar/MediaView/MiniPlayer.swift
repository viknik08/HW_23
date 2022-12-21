//
//  MiniPlayer.swift
//  HW_23
//
//  Created by Виктор Басиев on 01.12.2022.
//

import SwiftUI

struct MiniPlayer: View {
    // MARK: - Elements
    
    let animation: Namespace.ID
    private let height = UIScreen.main.bounds.height / 3
    private let width = UIScreen.main.bounds.width

    @State private var model = MiniPlayerModel.miniPlayer
    @Binding var expand: Bool
    @State var volumeSounds: CGFloat = 0
    @State var volumeDuration: CGFloat = 0
    
    // MARK: - Body

    var body: some View {
        VStack {
            ForEach(0..<model.count) { i in
                if expand {
                    self.player(data: model[i])
                } else {
                    self.miniPlayer(data: model[i])
                        
                }
            }
        }
        .background(
            Color(UIColor.systemGray6)
                .onTapGesture {
                    withAnimation(.spring()) {
                        expand.toggle()
                    }
                }
        )
        .frame(maxHeight: expand ? .infinity : 80)
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -50)
        
    }
    
    private func miniPlayer(data: MiniPlayerModel) -> some View {
        return VStack {
            HStack {
                Image(data.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(15)
                
                Text(data.name)
                    .font(.title2)
                Text("-")
                    .font(.title2)
                Text(data.nameSing)
                    .font(.title2)
                    .foregroundColor(Color(UIColor.darkGray))

                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(Color("launch-screen-bg"))
                })
                
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(Color("launch-screen-bg"))
                })
            }
            .padding(.init(top: 10, leading: 10, bottom: 0, trailing: 10))
            
            Rectangle()
                .fill(Color(UIColor.black.cgColor))
                .frame(width: width, height: 2, alignment: .center)
                .opacity(0.2)
        }
    }
    
    private func player(data: MiniPlayerModel) -> some View {
        return VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: 60, height: 4)
                .opacity(1)
                .padding(.vertical, 30)
            
            Image(data.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: height, height: height)
                    .cornerRadius(15)
                    .padding(.bottom, 50)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(data.name)
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                            
                        Text(data.nameSing)
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))

                    }
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))
                    }
                }
                .padding(.init(top: 50, leading: 20, bottom: 10, trailing: 20))
                
                Spacer(minLength: 0)
                
                VStack {
                    Slider(value: $volumeDuration, in: 0...CGFloat(data.duration))
                        .accentColor(Color("launch-screen-bg"))                        
                    
                    HStack {
                        
                        Text("\(stringDuration(duration: Int(volumeDuration)))")
                            .font(.system(size: 13, weight: .regular, design: .default))
                            .foregroundColor(.primary)

                        Spacer(minLength: 0)
                            
                        Text("-\(stringDuration(duration: Int(CGFloat(data.duration) - volumeDuration)))")
                            .font(.system(size: 13, weight: .regular, design: .default))
                            .foregroundColor(.primary)
                    }
                    .padding(.top, -3)
                }
                .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 40) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .foregroundColor(Color("launch-screen-bg"))
                            .frame(width: 50, height: 30)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .foregroundColor(Color("launch-screen-bg"))
                            .frame(width: 40, height: 40)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .foregroundColor(Color("launch-screen-bg"))
                            .frame(width: 50, height: 30)
                    }
                }
                .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15) {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(Color("launch-screen-bg"))
                    
                    Slider(value: $volumeSounds)
                        .accentColor(Color("launch-screen-bg"))

                    Image(systemName: "speaker.wave.2.fill")
                        .foregroundColor(Color("launch-screen-bg"))

                }
                .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 70) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundColor(Color(UIColor.darkGray))
                    }
                }
                .padding(.bottom, 30)
            }
            .frame(width: nil, height: nil)
            .opacity(1)
        }
    }
    
    private func stringDuration(duration: Int) -> String {
        return "\(duration / 60):\((duration % 60 < 10) ? "0\(duration % 60)" : "\(duration % 60)")"
    }
}

