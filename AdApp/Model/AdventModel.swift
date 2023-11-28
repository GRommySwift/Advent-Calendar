//
//  FirstScreenModel.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI



struct AdventModel: Hashable, Identifiable {
    let id = UUID()
    var image: String
    var text: String
    var isOpened: Bool
}

struct MiniGameModel: Hashable, Identifiable {
    let id = UUID()
    var firstQuest: String
    var firstAnswer: String
    var secondQuest: String
    var secondAnswer: String
    var thirdQuest: String
    var thirdAnswer: String
}
