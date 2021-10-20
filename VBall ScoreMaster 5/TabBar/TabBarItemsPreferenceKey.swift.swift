//
//  TabBarItemsPreferenceKey.swift.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/20/21.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
    
    static var defaultValue: [TabBarItem] = []
    
    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
    
}

struct TabBarItemViewModifier: ViewModifier {
    
    let tab: TabBarItem
    
    func body(content: Content) -> some View {
        content
            .preference(key: TabBarItemsPreferenceKey.self, value: [tab])
    }
}

extension View {
    
    func tabBarItem(tab: TabBarItem) -> some View {
        self
            .modifier(TabBarItemViewModifier(tab: tab))
    }
}
