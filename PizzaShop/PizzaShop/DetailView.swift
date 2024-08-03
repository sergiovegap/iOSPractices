//
//  DetailView.swift
//  PizzaShop
//
//  Created by Sergio Vega on 12/04/23.
//

import SwiftUI

struct DetailView: View {
    
    @State private var counter: Int = 1
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                Spacer()
                Text("Detail")
                Spacer()
                Image(systemName: "heart")
            }
            Spacer()
            Text("Pizza with Mushrooms")
                .font(Font.largeTitle)
                .fontWeight(.bold)
            Image("pizza-entera")
            Text("Choose the size")
            HStack{
                Button{//action
                } label: {
                    Text("8 inch")
                }.buttonStyle(optionsMenu())
                Button{//action
                } label: {
                    Text("20 inch")
                }.buttonStyle(optionsMenu())
                Button{//action
                } label: {
                    Text("38 inch")
                }.buttonStyle(optionsMenu())
            }
            VStack{
                Spacer()
                Stepper("\(counter)") {
                    counter += 1
                } onDecrement: {
                    counter -= 1
                }
                Spacer()
                HStack{
                    VStack{
                        Text("Price")
                        Text("$12.00")
                    }
                    Spacer()
                    Button("Add to cart") {
                        //action
                    }
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
