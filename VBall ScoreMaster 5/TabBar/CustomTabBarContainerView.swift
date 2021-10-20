//
//  CustomTabBarContainerView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/20/21.
//

import SwiftUI


struct CustomTabBarContainerView<Content:View>: View {
    
    @Binding var selection: TabBarItem
    @State private var tabs: [TabBarItem] = []
    
    let content: Content
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                content
            }
            CustomTabBarView(tabs: tabs, selection: $selection)
        }
    }
}

struct CustomTabBarContainerView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(iconName: "house", title: "Score", color: Color.red),
        TabBarItem(iconName: "gear", title: "Settings", color: Color.green),
        TabBarItem(iconName: "info.circle", title: "Support", color: Color.blue)
        
    ]
    
    static var previews: some View {
        CustomTabBarContainerView(selection: .constant(tabs.first!)) {
            Color.red
        }
    }
}
