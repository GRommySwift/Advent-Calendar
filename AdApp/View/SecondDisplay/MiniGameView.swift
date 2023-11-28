//
//  MiniGameView.swift
//  AdApp
//
//  Created by Roman on 28/11/2023.
//

import SwiftUI

struct MiniGameView: View {
    let question: String
    @State private var answer: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text(question)
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundColor(.black)
                .padding(80)
            TextField("Введи ответ", text: $answer)
                .multilineTextAlignment(.center)
                .font(.title2)
            Spacer()
        }
    }
}

struct MiniGameView_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameView(question: "Something")
    }
}
