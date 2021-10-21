//
//  PastScoresView.swift
//  VBall ScoreMaster 5
//
//  Created by Frank Bara on 10/21/21.
//

import SwiftUI

struct PastScoresView: View {
    
    
    var body: some View {
        
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 1) {
                HStack(alignment: .center, spacing: 2.0) {
                    Text("Visiting Team")
                        .font(.title)
                        .frame(minWidth: geo.size.width / 70.0, maxHeight: 76)

                    Spacer()
                    HStack(alignment: .center, spacing: 2) {
                        PastGameScoreView(gameScore: "18", textColor: Color.white, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "18", isBold: true, textColor: Color.red, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "18", textColor: Color.white, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "18", textColor: Color.white, backgroundColor: Color.black)
                    }
                    .padding(.trailing, 3)

                }
                .frame(height: geo.size.height / 10)
                .padding([.top, .trailing],2)
                .background(Color.red)
                .cornerRadius(10)

                
                
                HStack(alignment: .center, spacing: 2.0) {
                    Text("Home Team")
                        .font(.title)
                        .frame(minWidth: geo.size.width / 70.0, maxHeight: 76)
                    Spacer()
                    HStack(alignment: .center, spacing: 2) {
                        PastGameScoreView(gameScore: "16", textColor: Color.white, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "16", textColor: Color.white, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "22", isBold: true, textColor: Color.red, backgroundColor: Color.black)
                        PastGameScoreView(gameScore: "18", textColor: Color.white, backgroundColor: Color.black)
                    }
                    .padding(.trailing, 3)
                }
                .frame(height: geo.size.height / 10)
                .padding([.top, .trailing],2)
                .background(Color.blue)
                .cornerRadius(10)
            }
        }
        
        
    }
}

struct PastScoresView_Previews: PreviewProvider {
    static var previews: some View {
        PastScoresView()
            .previewLayout(.sizeThatFits)
    }
}
