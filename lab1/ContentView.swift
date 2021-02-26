//
//  ContentView.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/24.
//

import SwiftUI

struct ContentView: View {
    var viewModel: Lab1_emoji
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        
    }
}

struct CardView: View {
    var card: Lab1_memory<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: Lab1_emoji())
    }
}
