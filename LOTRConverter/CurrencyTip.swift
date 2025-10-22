//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by dev on 10/10/2025.
//


import TipKit

struct CurrencyTip : Tip {
    var title = Text("Change currency")
    
    var message: Text? = Text("Click on left or right currency to bring up Select currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
    
    
}
