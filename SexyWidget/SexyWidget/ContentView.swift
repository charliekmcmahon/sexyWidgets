//
//  ContentView.swift
//  SexyWidget
//
//  Created by Charlie McMahon on 28/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("emoji", store: UserDefaults(suiteName: "group.au.com.maccastech.SexyWidget"))
    var emojiData: Data = Data()
    
    let emojis = [
    
        Emoji(icon: "❤️", name: "Love", description: "A whole lotta love"),
        Emoji(icon: "😀", name: "Happy", description: "For when you're feeling happy!"),
        Emoji(icon: "😳", name: "Flushed", description: "Uh oh")
    ]
    
    
    var body: some View {
        VStack(spacing: 30) {
            ForEach(emojis) { emoji in
                EmojiView(emoji: emoji)
                    .onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                        save(emoji)
                    })
            }
        }
    }
    
    func save(_ emoji: Emoji) {
        guard let emojiData = try? JSONEncoder().encode(emoji) else { return }
        self.emojiData = emojiData
        print("save \(emoji)")
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
