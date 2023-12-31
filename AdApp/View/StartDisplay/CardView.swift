//
//  CardView.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

struct CardView: View {
    let firstScreenModel: AdventModel
    @EnvironmentObject var cardManager: CardManager
    var body: some View {
        if cardManager.currentCardIndex == 0 {
            VStack {
                Image(firstScreenModel.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(30)
                    .shadow(radius: 5)
                Text(firstScreenModel.text)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(-3)
                    
            }.frame(width: 240, height: 240)
        } else {
            if firstScreenModel.isOpened == false {
                NavigationLink(destination: SecondDisplay().navigationBarBackButtonHidden(true)) {
                    VStack {
                        Image(firstScreenModel.image)
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(30)
                            .shadow(radius: 5)
                        Text(firstScreenModel.text)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(-3)
                    }
                    
                }.frame(width: 240, height: 240)
            } else {
                VStack {
                    Image("3")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(30)
                        .shadow(radius: 5)
                    Text("Уже открыто")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(-3)
                        
                }.frame(width: 240, height: 240)
            }
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CardView(firstScreenModel: CardManager().testData[0])
        }.environmentObject(CardManager())
    }
}
