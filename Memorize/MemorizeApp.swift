//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Claudia on 14.11.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    let game = EmojiMemoryGame()  // game is a pointer to a class....the pointer doesn't change....but the class could
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
