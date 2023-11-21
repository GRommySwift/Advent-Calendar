//
//  AdAppApp.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

@main
struct AdAppApp: App {
    @StateObject var cardManager: CardManager = CardManager()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }.environmentObject(cardManager)
        }
    }
}
