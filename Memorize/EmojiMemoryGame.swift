//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Claudia on 28.11.21.
//
//  ViewModel
//  ---------

import SwiftUI

// func makeCardContent(index: Int) -> String {
//     return "❤️"
// }

class EmojiMemoryGame: ObservableObject {
    /*
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { (index: Int) -> Sring in return "❤️" })
   
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) { _ in "❤️" }
    */
    
    static let emojis = ["🚗", "🛵", "🚅", "🚁", "🛶", "🛳", "🚲", "🛸",
                         "🛩", "⛵️", "🏎", "🛺", "🚄", "🚒", "🚑", "🚀",
                         "🏍", "🛴", "🚂", "🚤", "🚜", "🚛", "🚚", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex]
            
        }
    }
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}

