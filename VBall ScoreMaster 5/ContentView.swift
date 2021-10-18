//
//  ContentView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                //Text("Scoreboard")
                    .padding()
                Spacer()
                HStack {
                    TabBarIcon(width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "vballnet", tabName: "Score")
                    TabBarIcon(width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "settings", tabName: "Settings")
                    TabBarIcon(width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "info.circle", tabName: "Support")
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 8)
                .background(Color("TabBarBackground"))
                .shadow(radius: 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBarIcon: View {
    let width, height: CGFloat
    let systemIconName: String
    let tabName: String
    
    var body: some View {
        VStack {
            Image(systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
    }
}
