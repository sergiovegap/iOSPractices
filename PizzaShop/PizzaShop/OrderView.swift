//
//  OrderView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 12/04/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        VStack{
            Text("Order here!")
            Image(systemName: "list.bullet.clipboard")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
