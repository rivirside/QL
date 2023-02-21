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
                .padding()
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
        GameView(game: Game(currentPlayer: Player.player))
    }
}
