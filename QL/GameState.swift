//
//  GamePublished.swift
//  QL
//
//  Created by Tomer Zilbershtein on 2/20/23.
//

import Foundation

enum BoardPosition {
    case a1, a2, a3, b1, b2, b3, c1, c2, c3
}

enum Tile {
    case player, agent, empty
}

enum Player {
    case agent, player
}

class Game: ObservableObject {
    @Published var a1: Tile = .empty
    @Published var a2: Tile = .empty
    @Published var a3: Tile = .empty
    @Published var b1: Tile = .empty
    @Published var b2: Tile = .empty
    @Published var b3: Tile = .empty
    @Published var c1: Tile = .empty
    @Published var c2: Tile = .empty
    @Published var c3: Tile = .empty
    
    @Published var currentPlayer: Player
    @Published var currentMove: Int = 0
    
    init(currentPlayer: Player) {
        self.currentPlayer = currentPlayer
    }
    
    
    func playTile(tile: inout Tile) {
        if currentPlayer == Player.player {
            tile = Tile.player
        } else {
            tile = Tile.agent
        }
        
        if currentPlayer == .player {
            currentPlayer = .agent
        } else if currentPlayer == .agent {
            currentPlayer = .player
        }
    }
    
    func getTiles() -> [Tile] {
        var tiles = [Tile]()
        tiles.append(a1)
        tiles.append(a2)
        tiles.append(a3)
        tiles.append(b1)
        tiles.append(b2)
        tiles.append(b3)
        tiles.append(c1)
        tiles.append(c2)
        tiles.append(c3)
        return tiles
    }
    
    func checkWin() {
        let tiles = getTiles()
    }
}
