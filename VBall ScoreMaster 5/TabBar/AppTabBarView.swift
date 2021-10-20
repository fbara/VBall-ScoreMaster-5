//
//  AppTabBarView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/18/21.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = "Score"
    @State private var tabSelection: TabBarItem = TabBarItem(iconName: "house", title: "Score", color: Color.red)
    
    var body: some View {

        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: TabBarItem(iconName: "house", title: "Score", color: Color.red))
            
            Color.red
                .tabBarItem(tab: TabBarItem(iconName: "gear", title: "Settings", color: Color.green))
            
            Color.green
                .tabBarItem(tab: TabBarItem(iconName: "info.circle", title: "Support", color: Color.blue))
        }
        
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(iconName: "house", title: "Score", color: Color.red),
        TabBarItem(iconName: "gear", title: "Settings", color: Color.green),
        TabBarItem(iconName: "info.circle", title: "Support", color: Color.blue)
        
    ]
    
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Score")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            
            Color.orange
                .tabItem {
                    Image(systemName: "info.circle")
                    //Image("support")
                    Text("Support")
                }
        }
    }
}
