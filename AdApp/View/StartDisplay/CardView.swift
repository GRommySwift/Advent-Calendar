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
    let firstScreenModel: FirstScreenModel
    var body: some View {
            VStack {
                Image(firstScreenModel.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(30)
                    .shadow(radius: 5)
                
                Text(firstScreenModel.text)
                    .bold()
                    .foregroundColor(.white)
                    .padding(-7)
                
            }.frame(width: 120, height: 120)
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(firstScreenModel: testData[0])
            
    }
}
