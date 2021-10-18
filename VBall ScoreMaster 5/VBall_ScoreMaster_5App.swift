//
//  VBall_ScoreMaster_5App.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/15/21.
//

import SwiftUI

@main
struct VBall_ScoreMaster_5App: App {
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
