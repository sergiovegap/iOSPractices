//
//  ItemDetail.swift
//  iDine
//
//  Created by Sergio Vega on 31/03/23.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(item.mainImage)
                        .resizable()
                        .scaledToFit()
                    Text("Photo: \(item.photoCredit)")
                        .padding(4)
                        .background(.black)
                        .font(.caption)
                        .foregroundColor(.white)
                        .offset(x: -5, y: -5)
                }
                Text(item.description)
                    .padding()
                Button("Order This"){
                    order.add(item: item)
                }
                .buttonStyle(.borderedProminent)
                .accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                
                TabView{
                        NavigationLink(destination: FavoritesView()){
                            Label("Favorites", systemImage: "star")
                        }
                }
                                               
                Spacer()                
            }
            .navigationTitle(item.name)
            .navigationBarTitleDisplayMode(.inline)
        }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
