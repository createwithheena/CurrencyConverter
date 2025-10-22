//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Heena on 29/09/2025.
//
import SwiftUI

struct ExchangeRate: View {
    
    @State var leftImage : ImageResource
    @State var rightImage : ImageResource
    @State var strRate : String
    
    var body: some View {
        HStack {
            //Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Exchange rate text
            Text(strRate)
            
            //Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            
        }
    }
}
#Preview {
    ExchangeRate(leftImage:.silverpiece , rightImage: .silverpenny, strRate:"1 Silver piece = 4 Silver pennies")
}
