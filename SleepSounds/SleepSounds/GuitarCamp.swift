//
//  GuitarCamp.swift
//  SleepSounds
//
//  Created by Sergio Vega on 17/04/23.
//

import SwiftUI

var songs = ["The Guitars", "Lost Without You", "City Lights", "Romantic"]

struct GuitarCamp: View {
    
    let columns = [GridItem(.flexible(minimum: 20)),
                   GridItem(.flexible(minimum: 20))]
    
    var body: some View {
        ScrollView{
            VStack{
                VStack(alignment: .leading, spacing: 15){
                    //Title
                    VStack(alignment: .leading, spacing: 5){
                        Text("Guitar Camp")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text("7 Songs • Instrumental")
                            .foregroundColor(Color.gray)
                    }.frame(width: .infinity)
                        .padding(.leading)
                    
                    //Buttons
                    VStack(alignment: .trailing, spacing: 25){
                        Rectangle().fill(Color.accentColor).frame(width: 350, height: 1)
                        
                        HStack(spacing: 20){
                            Button {
                                //
                            } label: {
                                Label("Play", systemImage: "play.fill")
                            }.frame(width: 140)
                                .padding(10)
                                .foregroundColor(Color.white)
                                .background(PastelBlue)
                                .clipShape(Capsule())
                            
                            Button {
                                //
                            } label: {
                                Label("Unfavorite", systemImage: "star.leadinghalf.filled")
                            }.frame(width: 140)
                                .padding(10)
                                .foregroundColor(Color.yellow)
                                .background(TabColor)
                                .clipShape(Capsule())
                        }
                        
                        Rectangle().fill(Color.accentColor).frame(width: 350, height: 1)
                    }.padding()
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("About this pack")
                            .font(Font.title3)
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Text("An acoustic mix has been specially selected for you. The camping atmosphere will help you improve your sleep and your body as a whole. Your dreams will be delightful and vivid.")
                            .foregroundColor(Color.gray)
                    }.padding()
                }
                
                VStack{
                    List{
                        Text("List of songs")
                            .listRowBackground(TabColor)
                            .foregroundColor(Color.gray)
                        ForEach(songs, id: \.self) { song in
                            Label(song, systemImage: "play.circle")
                        }.listRowBackground(TabColor)
                            .padding([.top, .bottom], 10)
                            .foregroundColor(Color.white)
                    }.frame(width: .infinity, height: 350)
                     .background(ColorBg)
                     .scrollContentBackground(.hidden)
                    
                    VStack(alignment: .leading){
                        Text("Featured On")
                            .padding()
                            .font(Font.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        LazyVGrid(columns: columns){
                            VStack(alignment: .leading){
                                Image("chill-racoon")
                                Text("Chill-hop")
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
            }
        }.background(ColorBg)
    }
}

struct GuitarCamp_Previews: PreviewProvider {
    static var previews: some View {
        GuitarCamp()
    }
}
