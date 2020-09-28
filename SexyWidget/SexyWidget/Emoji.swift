//
//  Emoji.swift
//  SexyWidget
//
//  Created by Charlie McMahon on 28/9/20.
//

import Foundation

struct Emoji: Identifiable, Codable{
    
    let icon: String
    let name: String
    let description: String
    
    var id: String { icon }
    
}
