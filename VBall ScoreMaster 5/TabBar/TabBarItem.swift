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
    
case home, settings, support, messages
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .settings: return "gear"
        case .support: return "info.circle"
        case .messages: return "message"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Score"
        case .settings: return "Settings"
        case .support: return "Support"
        case .messages: return "Messages"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return Color.red
        case .settings: return Color.blue
        case .support: return Color.green
        case .messages: return Color.orange
        }
    }
}
