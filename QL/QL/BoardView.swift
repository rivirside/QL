//
//  BoardView.swift
//  QL
//
//  Created by Tomer Zilbershtein on 2/20/23.
//

import SwiftUI

struct BoardView: View {
//    @Binding var a1: Tile
//    @Binding var a2: Tile
//    @Binding var a3: Tile
//    @Binding var b1: Tile
//    @Binding var b2: Tile
//    @Binding var b3: Tile
//    @Binding var c1: Tile
//    @Binding var c2: Tile
//    @Binding var c3: Tile
    
    @ObservedObject var game: Game
    
    var body: some View {
        Grid {
            Color.clear
            Color.clear
            Color.clear
            GridRow {
                Button {
                    
                } label: {
                    TileView(tile: $game.a1)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.a2)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.a3)
                }
            }
            GridRow {
                Button {
                    
                } label: {
                    TileView(tile: $game.b1)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.b2)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.b3)
                }
            }
            GridRow {
                Button {
                    
                } label: {
                    TileView(tile: $game.c1)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.c2)
                }
                Button {
                    
                } label: {
                    TileView(tile: $game.c3)
                }
            }
        }
        .padding()
    }
}




