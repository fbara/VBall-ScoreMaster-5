//
//  TabBarItem.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/20/21.
//

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String!
//    let title: String
//    let color: Color
//}

enum TabBarItem: Hashable {
    
case home, settings, support
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .settings: return "gear"
        case .support: return "info.circle"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Score"
        case .settings: return "Settings"
        case .support: return "Support"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return Color.red
        case .settings: return Color.blue
        case .support: return Color.green
        }
    }
    
}
