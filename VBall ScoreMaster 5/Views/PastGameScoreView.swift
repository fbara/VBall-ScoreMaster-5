//
//  PastGameScoreView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/21/21.
//

import SwiftUI

struct PastGameScoreView: View {
    
    var gameScore: String = "0"
    var isBold: Bool = false
    var textColor: Color = Color.black
    var backgroundColor: Color = Color.white
    
    var body: some View {
        
        Text(gameScore)
            .font(.largeTitle)
            .fontWeight(isBold ? .heavy : .regular)
            .frame(minWidth: 30.0, idealWidth: 40.0, maxWidth: 55.0, minHeight: 55.0, idealHeight: 70.0, maxHeight: 75.0, alignment: .center)
            .foregroundColor(textColor)
            .background(backgroundColor)
            
    }
}

struct PastGameScoreView_Previews: PreviewProvider {
    static var previews: some View {
        PastGameScoreView(gameScore: "16", textColor: Color.red, backgroundColor: Color.blue)
            .previewLayout(.sizeThatFits)
    }
}
