//
//  Lab1_emoji.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/25.
//

import SwiftUI

class Lab1_emoji: ObservableObject {
    private var model: Lab1_memory<String> = Lab1_emoji.createMemoryGame()
    
    static func createMemoryGame() -> Lab1_memory<String> {
        let emoji: Array<String> = ["👦🏿","👦🏻"]
       return  Lab1_memory<String>(numberOfParisOfCards: 2) { pairIndex in
            return emoji[pairIndex]
       }
    }
    
    //MARK: -Access to the Model
    
    var cards: Array<Lab1_memory<String>.Card> {
        model.cards
    }
    
    //MARK: -Intent(s)
    
    func choose(card: Lab1_memory<String>.Card) {
        model.choose(card: card)
    }
}


