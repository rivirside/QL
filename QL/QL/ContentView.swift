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
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Toggle("Play first?", isOn: $playFirst)
            Button {
                
            } label: {
                Text("Start Game")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
