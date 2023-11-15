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
    
    var testData: [AdventModel] = [
        AdventModel(image: "1", text: "23.12"),
        AdventModel(image: "1", text: "24.12"),
        AdventModel(image: "1", text: "25.12"),
        AdventModel(image: "1", text: "26.12"),
        AdventModel(image: "1", text: "27.12"),
        AdventModel(image: "1", text: "28.12"),
        AdventModel(image: "1", text: "29.12"),
        AdventModel(image: "1", text: "30.12"),
        AdventModel(image: "1", text: "31.12"),
    ]
    
    var currentCardIndex = 0
        
        func getCurrentCard() -> AdventModel? {
            guard currentCardIndex < testData.count else {
                return nil
            }
            return testData[currentCardIndex]
        }
        
        func moveNext() {
            currentCardIndex += 1
            if currentCardIndex >= testData.count {
                currentCardIndex = 0
            }
        }
}
