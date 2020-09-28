//
//  ContentView.swift
//  SexyWidget
//
//  Created by Charlie McMahon on 28/9/20.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = [
    
        Emoji(icon: "❤️", name: "Love", description: "A whole lotta love"),
        Emoji(icon: "😀", name: "Happy", description: "For when you're feeling happy!"),
        Emoji(icon: "😳", name: "Flushed", description: "Uh oh")
    ]
    
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
