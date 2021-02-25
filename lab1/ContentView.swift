//
//  ContentView.swift
//  lab1
//
//  Created by YuTech x CBIC on 2021/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceup: false)
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
        
    }
}

struct CardView: View {
    var isFaceup: Bool
    var body: some View {
        ZStack {
            if isFaceup {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("😈")
            } else {
            RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
