//
//  iDineApp.swift
//  iDine
//
//  Created by Sergio Vega on 30/03/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @State var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
