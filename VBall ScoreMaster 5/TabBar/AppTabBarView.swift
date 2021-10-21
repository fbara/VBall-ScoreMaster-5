//
//  AppTabBarView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/18/21.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = "Score"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.red
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            Color.blue
                .tabBarItem(tab: .settings, selection: $tabSelection)
            
            Color.green
                .tabBarItem(tab: .support, selection: $tabSelection)
            
            Color.orange
                .tabBarItem(tab: .messages, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    
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
