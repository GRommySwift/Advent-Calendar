//
//  ContentView.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var cardManager = CardManager()
    @State private var currentCard: AdventModel?
    
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
                CardView(firstScreenModel: cardManager.testData[0])
                   
                .navigationTitle(Text("AAAAA"))
                
            }
        }
        
        .onAppear {
            TimerManager().startTimer()
                    
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
