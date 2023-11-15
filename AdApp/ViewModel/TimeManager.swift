//
//  TimeManager.swift
//  AdApp
//
//  Created by Roman on 15/11/2023.
//
import SwiftUI

class TimerManager: NSObject {
    @StateObject private var cardManager = CardManager()
    @State private var currentCard: AdventModel?
    var timer: Timer?

    func startTimer() {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 12
        dateComponents.day = 20
        let startDate = calendar.date(from: dateComponents)!

        timer = Timer(fireAt: startDate, interval: 24 * 60 * 60, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!, forMode: .common)
    }

    @objc func update() {
        // Обновляем текущую карточку
            currentCard = cardManager.getCurrentCard()

            // Переходим к следующей карточке
            cardManager.moveNext()
    }
}

