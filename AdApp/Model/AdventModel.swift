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
    
}

class CardManager: ObservableObject {
    @Published var currentCardIndex: Int = 0
    @Published var testData: [AdventModel] = [
        AdventModel(image: "0", text: "Туть пока пусто ждемс 23.12.2023"),
        AdventModel(image: "2", text: "23.12"),
        AdventModel(image: "2", text: "24.12"),
        AdventModel(image: "2", text: "25.12"),
        AdventModel(image: "2", text: "26.12"),
        AdventModel(image: "2", text: "27.12"),
        AdventModel(image: "2", text: "28.12"),
        AdventModel(image: "2", text: "29.12"),
        AdventModel(image: "2", text: "30.12"),
        AdventModel(image: "2", text: "31.12"),
    ]
    
    var date: Int {
        let currentDate = Date()
        let calendar = Calendar.current
        let dayOfMonth = calendar.component(.day, from: currentDate)
        return dayOfMonth
    }
    
    func makeMyDay() {
        switch date {
        case 22:
            currentCardIndex = 1
        case 24:
            currentCardIndex = 2
        case 25:
            currentCardIndex = 3
        case 26:
            currentCardIndex = 4
        case 27:
            currentCardIndex = 5
        case 28:
            currentCardIndex = 6
        case 29:
            currentCardIndex = 7
        case 30:
            currentCardIndex = 8
        case 31:
            currentCardIndex = 9
        default:
            currentCardIndex = 0
        }
    }
}
