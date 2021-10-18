//
//  ViewRouter.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/18/21.
//

import Foundation

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .score
    
}

enum Page {
    case score
    case settings
    case support
}
