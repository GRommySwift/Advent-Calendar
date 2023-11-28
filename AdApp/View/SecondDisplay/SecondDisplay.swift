//
//  SecondDisplay.swift
//  AdApp
//
//  Created by Roman on 15/11/2023.
//

import SwiftUI

struct SecondDisplay: View {
    @State private var questManager: MiniGameModel?
    @EnvironmentObject var cardManager: CardManager
    var body: some View {
        NavigationStack {
            ZStack {
                Image("4").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
                MiniGameView(question: cardManager.quests[cardManager.currentCardIndex].firstQuest)
            }
        }
    }
}

struct SecondDisplay_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SecondDisplay()
        }.environmentObject(CardManager())
    }
}
