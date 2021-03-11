//
//  EmojiMemoryGameView.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/24.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: Lab1_emoji
    
    var body: some View {
        Lab1_Grid(viewModel.cards) { card in
            CardView(card: card).onTapGesture {
            self.viewModel.choose(card: card)
            }
            .padding(5)
        }
            .padding()
            .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: Lab1_memory<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: conerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: conerRadius).stroke(lineWidth: edgeLineWidth)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: conerRadius).fill()
            }
        }
        .font(Font.system(size: fontSize(for: size)))
    }
    
    //MARK: -Drawing Constants
    
    let conerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75
    }
    
}







struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: Lab1_emoji())
    }
}
