//
//  EmojiView.swift
//  SexyWidget
//
//  Created by Charlie McMahon on 28/9/20.
//

import SwiftUI

struct EmojiView: View {
    
    let emoji: Emoji
    
    var body: some View {
        Text(emoji.icon)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .clipShape(Circle())
    }
}
