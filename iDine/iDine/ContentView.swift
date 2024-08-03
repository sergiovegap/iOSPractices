//
//  ContentView.swift
//  iDine
//
//  Created by Sergio Vega on 30/03/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    let item: MenuItem
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) {section in 
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink {
                                Text(item.name)
                            } label: {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(item: MenuItem.example)
    }
}
