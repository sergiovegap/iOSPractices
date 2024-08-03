//
//  CartView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 12/04/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack {
            Text("Cart here!")
            Image(systemName: "cart.fill")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
