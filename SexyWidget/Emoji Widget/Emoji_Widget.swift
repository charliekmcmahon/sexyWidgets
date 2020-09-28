//
//  Emoji_Widget.swift
//  Emoji Widget
//
//  Created by Charlie McMahon on 28/9/20.
//

import WidgetKit
import SwiftUI

struct EmojiEntry: TimelineEntry {
    var date = Date()
    let emoji: Emoji
}

struct Provider: TimelineProvider {

    @AppStorage("emoji", store: UserDefaults(suiteName: "group.au.com.maccastech.SexyWidget"))
    var emojiData: Data = Data()
    
    func getSnapshot(in context: Context, completion: @escaping (EmojiEntry) -> Void) {
        guard let emoji = try? JSONDecoder().decode(Emoji.self, from: emojiData) else { return }
        let entry = EmojiEntry(date: Date(), emoji: emoji)
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<EmojiEntry>) -> Void) {
        guard let emoji = try? JSONDecoder().decode(Emoji.self, from: emojiData) else { return }
        
        let entry = EmojiEntry(date: Date(), emoji: emoji)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
    
    func placeholder(in context: Context) -> EmojiEntry {
        var body: some View {
            EmojiView(
                emoji: Emoji(icon: "😳", name: "test", description: "Test")
            )
        }
        EmojiEntry(emoji: <#Emoji#>)
    }
}

struct WidgetEntryView: View {
    let entry: Provider.+Entry
    
    var body: some View {
        EmojiView(emoji: entry.emoji)
    }
}
