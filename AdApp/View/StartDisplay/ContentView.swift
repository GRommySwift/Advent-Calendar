//
//  ContentView.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cardManager: CardManager
    @State private var currentCard: AdventModel?
    //@State private var timeManager = TimerManager()
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.green]
    }
    
    let dateNow = Date.now
    let columns = [GridItem(.adaptive(minimum: 110))]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
                
                CardView(firstScreenModel: cardManager.testData[cardManager.currentCardIndex])
                  //  .navigationTitle(Text("Advent Calendar"))
                
            }
        }
        
        .onAppear {
//            TimerManager().startTimer()
            cardManager.makeMyDay()
            print(cardManager.date)
            print(cardManager.currentCardIndex)
                    
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }.environmentObject(CardManager())
    }
}
