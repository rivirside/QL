//
//  GameView.swift
//  QL
//
//  Created by Tomer Zilbershtein on 2/20/23.
//

import SwiftUI

struct GameView: View {
    @StateObject var game: Game
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            BoardView(game: game)
            VStack {
                Spacer()
                HStack {
                    Text("Player")
                        .font(.title)
                        .frame(maxWidth: 100)
                        .foregroundColor(.blue)
                    Spacer()
                    Text("Agent")
                        .font(.title)
                        .frame(maxWidth: 100)
                        .foregroundColor(.white)
                }.padding(.horizontal)
                Spacer()
                Spacer()
                
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}


//
//a1: $game.a1,
//          a2: $game.a2,
//          a3: $game.a3,
//          b1: $game.b1,
//          b2: $game.b2,
//          b3: $game.b3,
//          c1: $game.c1,
//          c2: $game.c2,
//          c3: $game.c3
