//
//  TabView.swift
//  SleepSounds
//
//  Created by Sergio Vega on 14/04/23.
//

import SwiftUI

let PastelBlue = Color(red: 72/255, green: 112/255, blue: 255)
let TabColor = Color(red: 45/255, green: 53/255, blue: 72/255)

struct NavigationBar: View {
    
    @State var isPresented: Bool = true
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(TabColor)
        UITabBar.appearance().unselectedItemTintColor = UIColor(.gray)
    }
    
    var body: some View {
        TabView{
            NavigationStack {
                Discover()
            }.tabItem {
                Label("Discover", systemImage: "moon.stars.fill")
            }
            Composer().tabItem {
                Label("Composer", systemImage: "music.note")
            }
            Profile().tabItem {
                Label("Profile", systemImage: "person.fill")
            }
        }
        .accentColor(PastelBlue)
        .background(
            TabColor.offset(y: isPresented ? 0 : UIScreen.main.bounds.size.height - 120)
        )
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
