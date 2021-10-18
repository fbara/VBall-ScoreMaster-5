//
//  ContentView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    @State var showPopup = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                switch viewRouter.currentPage {
                case .score:
                    Text("Score")
                case .settings:
                    Text("Settings")
                case .support:
                    Text("Support")
                }
                
                Spacer()
                
                HStack {
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .score, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "vballnet", tabName: "Score")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .settings, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "settings", tabName: "Settings")
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .support, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName:
                                "info.circle", tabName: "Support")
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height / 8)
                .background(Color("TabBarBackground"))
                .shadow(radius: 2)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    
    let assignedPage: Page
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
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("TabBarHighlight") : .gray)
        .background(viewRouter.currentPage == assignedPage ? Color.green : .blue)
    }
}
