//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Heena on 30/09/2025.
//

import SwiftUI

struct CurrencyIcon: View {
    
    @State var currencyImage : ImageResource
    @State var currencyName : String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
                .padding(5)
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .background(.brown.opacity(0.75))
        .frame(width: 100, height: 100)
        .clipShape(.rect(cornerRadius:25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
}
