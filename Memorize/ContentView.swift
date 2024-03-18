//
//  ContentView.swift
//  Memorize
//
//  Created by Vladislav on 17.03.2024.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["✅", "⭐", "📕", "💥"]

    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
//            CardView(content: "✅", isFaceUp: true)
//            CardView(content: "⭐")
//            CardView(content: "📕")
//            CardView(content: "💥")
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true

    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
