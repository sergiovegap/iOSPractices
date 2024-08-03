//
//  ContentView.swift
//  SleepSounds
//
//  Created by Sergio Vega on 13/04/23.
//

import SwiftUI

let ColorBg = Color(red: 20/255, green: 25/255, blue: 39/255)

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(red: 20/255, green: 25/255, blue: 39/255)
                .ignoresSafeArea(.all)
            VStack{
                Spacer()
                Image("SleepSounds")
                Spacer()
                Image("logo")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
