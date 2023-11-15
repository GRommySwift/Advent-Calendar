//
//  CardView.swift
//  AdApp
//
//  Created by Roman on 02/11/2023.
//

import SwiftUI

struct CardView: View {
    // @State var image: String
    //@State var text: String
    let firstScreenModel: AdventModel
    var body: some View {
        
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
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(firstScreenModel: CardManager().testData[0])
        
    }
}
