//
//  LaunchScreenPhase.swift
//  HW_23
//
//  Created by Виктор Басиев on 14.12.2022.
//

import Foundation

enum LaunchScreenPhase {
    case first
    case second
    case complited
}

final class LaunchScreenManager: ObservableObject {
    
    @Published private(set) var state: LaunchScreenPhase = .first
    
    func dismiss() {
        self.state = .second
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.state = .complited
        }
    }
}
