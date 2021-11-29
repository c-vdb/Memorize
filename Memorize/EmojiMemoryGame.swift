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
    
    
    typealias Card = MemoryGame<String>.Card  // Fullname ist EmojiMemoryGame.MemoryGame<String>.Card, because here we are in the class EmojiMemoryGame
    static let emojis = ["🚗", "🛵", "🚅", "🚁", "🛶", "🛳", "🚲", "🛸",
                         "🛩", "⛵️", "🏎", "🛺", "🚄", "🚒", "🚑", "🚀",
                         "🏍", "🛴", "🚂", "🚤", "🚜", "🚛", "🚚", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
    
}

