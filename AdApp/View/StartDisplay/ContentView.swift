//
//  ContentView.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

struct ContentView: View {
    
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
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 50) {
                        ForEach(testData, id: \.self) { card in
                            if card.date <= dateNow {
                                CardView(firstScreenModel: card)
                            }
                        }
                    }
                    
                }.navigationTitle(Text("AAAAA"))
                        
                        .padding(.vertical)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
