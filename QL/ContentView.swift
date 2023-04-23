//
//  ContentView.swift
//  QL
//
//  Created by Tomer Zilbershtein on 2/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var playFirst: Bool = false
    @State var startGame: Bool = false
    @State var watchMode: Bool = false
    
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Toggle("Play first?", isOn: $playFirst)
            Button {
                startGame = true
            } label: {
                Text("Start Game")
            }
        }
        .padding()
        .fullScreenCover(isPresented: $startGame) {
            if playFirst {
                GameView(game: Game(currentPlayer: Player.player))
                
            } else {
                GameView(game: Game(currentPlayer: Player.agent))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
