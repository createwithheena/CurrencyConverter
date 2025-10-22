//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Heena on 29/09/2025.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                //Descritpion text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                //Exchange rates
                ExchangeRate(leftImage:.goldpiece , rightImage: .goldpenny, strRate:"1 Golden Piece = 4 Golden Pennies")
                ExchangeRate(leftImage:.goldpenny , rightImage: .silverpiece, strRate:"1 Golden Penny = 4 Silver Pieces")
                ExchangeRate(leftImage:.silverpiece , rightImage: .silverpenny, strRate:"1 Silver Piece = 4 Silver Pennies")
                ExchangeRate(leftImage:.silverpenny , rightImage: .copperpenny, strRate:"1 Silver Penny = 4 Copper Pennies")
                

                //Done Button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(.largeTitle)
                .foregroundColor(.black)
            }
        }
        .foregroundColor(.black)
    }
}

#Preview {
    ExchangeInfo()
}

