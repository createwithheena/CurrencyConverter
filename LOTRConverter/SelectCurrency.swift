//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Heena on 30/09/2025.
//

import SwiftUI

struct SelectCurrency: View {

    @Environment(\.dismiss) var dismiss

    @Binding var topCurrency : Currency
    @Binding var bottomCurrency : Currency
    
    var body: some View {
        
        ZStack {
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                //Currency Icons
                IconGrid(currency: $topCurrency)
               
                
                //Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                //Currency Icons
                
                IconGrid(currency: $bottomCurrency)
                
                //Done Button
                Button("Done") {
                  dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding(.top)
            }
            .multilineTextAlignment(.center)
            .padding(8)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var topCurrency = Currency.silverPiece
    @Previewable @State var bottomCurrency = Currency.goldPiece
    
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
