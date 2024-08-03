//
//  MainView.swift
//  iDine
//
//  Created by Sergio Vega on 31/03/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView{
            ContentView(item: MenuItem.example)
                .tabItem{
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem{
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
