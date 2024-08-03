//
//  FavoritesView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 12/04/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack{
            Text("Favorites here!")
            Image(systemName: "heart")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
