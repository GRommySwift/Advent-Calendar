//
//  FirstScreenModel.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import Foundation



struct FirstScreenModel: Hashable, Identifiable {
    let id = UUID()
    var image: String
    var text: String
    var date: String
}

var testData = [
    FirstScreenModel(image: "1", text: "23.12", date: "23.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "24.12", date: "24.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "25.12", date: "25.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "26.12", date: "26.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "27.12", date: "27.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "28.12", date: "28.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "29.12", date: "29.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "30.12", date: "30.12.2023 , 08:00"),
    FirstScreenModel(image: "1", text: "31.12", date: "31.12.2023 , 08:00"),
]
