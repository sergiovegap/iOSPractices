//
//  MainTabView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 12/04/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var index = 1
    
    var body: some View {
        TabView(selection: $index){
            ContentView().tabItem {
                Text("Home")
                Image(systemName: "house")
            }.tag(1)
            FavoritesView().tabItem {
                Image(systemName: "heart")
                Text("Favorites")
            }.tag(2)
            CartView().tabItem {
                Image(systemName: "cart.fill")
                Text("Cart")
            }.tag(3)
            OrderView().tabItem {
                Image(systemName: "list.bullet.clipboard")
                Text("My Orders")
            }.tag(4)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
