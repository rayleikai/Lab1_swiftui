//
//  Lab1_memory.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/25.
//

import Foundation


struct Lab1_memory<CardContent> {
    var cards: Array<Card>
    
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    init(numberOfParisOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfParisOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2+1))

        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
