//
//  ContentView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 11/04/23.
//

import SwiftUI

struct optionsMenu: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .padding(10)
            .foregroundColor(Color(red: 149/255, green: 149/255, blue: 149/255))
            .buttonBorderShape(ButtonBorderShape.roundedRectangle)
            .background()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    
    @State private var searchText = ""
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                HStack{
                    Text("Hello Mehrab")
                    Spacer()
                    Image(systemName: "bell")
                }
                Text("Welcome Back !")
            }
            NavigationStack{}.searchable(text: $searchText)
            HStack{
                Button{//action
                } label: {
                    Text("All")
                }.buttonStyle(optionsMenu())
                Button{//action
                } label: {
                    Text("Pizza")
                }.buttonStyle(optionsMenu())
                Button{ //action
                } label: {
                    Text("Fast Food")
                }.buttonStyle(optionsMenu())
                Button{//action
                } label: {
                    Text("Vegan")
                }.buttonStyle(optionsMenu())
            }
            Spacer()
            VStack{
                VStack{
                    HStack{
                        Image("pizza")
                        VStack{
                            Text("Pizza with Mushrooms")
                            Label("14-20 minutes", systemImage: "timer")
                                .font(Font.caption)
                            HStack{
                                Text("$12")
                                Button("+", action: {})
                                    .buttonStyle(optionsMenu())
                                    .font(Font.title)
                            }
                        }
                    }
                }.padding()
                VStack{
                    HStack{
                        Image("Pepperoni-Pizza")
                        VStack{
                            Text("Pepperoni Cheese Pizza")
                            Label("18-25 minutes", systemImage: "timer")
                                .font(Font.caption)
                            HStack{
                                Text("$12")
                                Button("+", action: {
                                    
                                })
                                    .buttonStyle(optionsMenu())
                                    .font(Font.title)
                            }
                        }
                    }
                }.padding()
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
