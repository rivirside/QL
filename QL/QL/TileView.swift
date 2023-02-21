//
//  TileView.swift
//  QL
//
//  Created by Tomer Zilbershtein on 2/20/23.
//

import SwiftUI

struct TileView: View {
    @Binding var tile: Tile
    
    var body: some View {
        if tile == .player {
            Color.blue
        } else if tile == .agent {
            Color.green
        } else {
            Color.gray
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView(tile: Binding.constant(Tile.empty))
    }
}
