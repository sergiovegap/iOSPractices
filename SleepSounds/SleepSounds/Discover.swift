//
//  DiscoverView.swift
//  SleepSounds
//
//  Created by Sergio Vega on 14/04/23.
//

import SwiftUI

struct Title: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(Font.title3)
            .foregroundColor(Color.white)
    }
}

struct Subtitle: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(Font.subheadline)
            .foregroundColor(Color.gray)
    }
}

struct FilterButtons: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .padding(10)
            .foregroundColor(Color.white)
            .background(PastelBlue)
            .clipShape(Capsule())
    }
}

struct Discover: View {
    
    let columns = [GridItem(.flexible(minimum: 20)),
                   GridItem(.flexible(minimum: 20))]
    
    var body: some View {
        NavigationStack {
            VStack{
                ScrollView{
                    Text("Discover")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color.white)
                        .font(Font.largeTitle)
                        .fontWeight(.bold)
                    ScrollView(.horizontal){
                        LazyHStack(spacing: 10){
                            Button {
                                //
                            } label: {
                                Label("All", systemImage: "square.grid.3x3.fill")
                            }.buttonStyle(FilterButtons())
                            Button {
                                //
                            } label: {
                                Label("Ambient", systemImage: "figure.mind.and.body")
                            }.buttonStyle(FilterButtons())
                            Button {
                                //
                            } label: {
                                Label("Kids", image: "icons8-infant")
                            }.buttonStyle(FilterButtons())
                        }.padding(.bottom)
                    }
                    LazyVGrid(columns: columns) {
                        VStack(alignment: .leading){
                            NavigationLink(destination: PreCampGuitar(), label: {
                                VStack(alignment: .leading){
                                    Image("guitar-camp")
                                    Text("Guitar Camp")
                                        .modifier(Title())
                                    Text("7 Songs • Instrumental")
                                        .modifier(Subtitle())
                                }
                            })
                        }
                        VStack(alignment: .leading){
                            Image("space-travel")
                            Text("Chill-hop")
                                .modifier(Title())
                            Text("7 Songs • Instrumental")
                                .modifier(Subtitle())
                        }
                        VStack(alignment: .leading){
                            Image("pack-name")
                            Text("Pack name")
                                .modifier(Title())
                            Text("4 Hours • Category name")
                                .modifier(Subtitle())
                        }
                        VStack(alignment: .leading){
                            Image("pack-name-2")
                            Text("Pack name")
                                .modifier(Title())
                            Text("4 Hours • Category name")
                                .modifier(Subtitle())
                        }
                        VStack(alignment: .leading){
                            Image("space-travel")
                            Text("Guitar Camp")
                                .modifier(Title())
                            Text("7 Songs • Instrumental")
                                .modifier(Subtitle())
                        }
                        VStack(alignment: .leading){
                            Image("lullaby-2")
                            Text("Guitar Camp")
                                .modifier(Title())
                            Text("7 Songs • Instrumental")
                                .modifier(Subtitle())
                        }
                    }
                }
            }
            .padding()
        .background(Color(red: 20/255, green: 25/255, blue: 39/255))
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
