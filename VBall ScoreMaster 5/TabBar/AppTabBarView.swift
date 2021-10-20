//
//  AppTabBarView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/18/21.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = "Score"
    
    var body: some View {

        
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image("house")
                    Text("Score")
                }
            
            Color.blue
                .tabItem {
                    Image("gear")
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

struct AppTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}
